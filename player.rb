require './character'
require './decks'
require './minion_group'

class Player
  include Character

  attr_accessor :deck, :hand, :max_mana, :mana, :opponent, :minions, :weapon, :wins, :spell_damage
  attr_accessor :fatigue_damage, :cards_played, :armour, :game

  def start_game(game)
    self.game = game
    hook_parent = game
    reset
  end

  def reset
    self.hand = Array.new
    self.minions = MinionGroup.new
    self.max_mana = 0
    self.health = 30
    self.weapon = nil
    self.spell_damage = 0
    self.fatigue_damage = 0
    self.armour = 0
    @game = nil
    @deck.init_cards
  end

  def initialize(opts = {})
    super
    @deck = Decks.get(name: opts[:deck])
    if opts[:opponent]
      @opponent = opts[:opponent]
      @opponent.opponent = self
    end
    @max_health = 30
    @wins = 0
    self.reset
  end

  def start_turn
    super
    self.max_mana += 1
    self.mana = self.max_mana
    self.minions.each do |minion|
      minion.start_turn
    end
    self.cards_played = 0
  end

  def end_turn
    super
    @minions.each do |minion|
      minion.end_turn
    end
  end

  ##############################
  # target selection / bonuses #
  ##############################
  def add_temporary_attack_to_minion(amount)
    target = choose_bonus_minion attacK: amount, health: 0
    if target
      target.temporary_attack += amount
    end
  end

  def random_target(opts = {})
    targets = opponent.minions.targetable(opts)
    if opts[:include_friendly]
      targets.concat minions.targetable(opts)
    elsif opts[:include_opponent]
      targets << opponent
    elsif opts[:include_self]
      tagets << self
    end
    targets.shuffle.first
  end

  def cast_damage_spell(opts = {})
    best_target(opts).deal_damage(opts[:damage])
  end

  def swap_minion_stats
    target = choose_best_stat_swap_minion
    if target
      temp = target.attack
      target.attack = target.max_health
      target.max_health = temp
    end
  end

  def grant_minion_bonus(opts = {})
    target = choose_bonus_minion(opts)
    if target
      target.attack += opts[:attack] if opts[:attack]
      target.max_health += opts[:health] if opts[:health]
    end
  end

  def grant_adjacent_bonus(opts = {})
    targets = choose_adjacent_targets(opts)
    if targets and targets.size > 0
      targets.each do
        target.attack += opts[:attack] if opts[:attack]
        target.max_health += opts[:health] if opts[:health]
        target.taunt = opts[:taunt] if opts[:taunt]
      end
    end
  end

  def targets
    Array.new.concat(minions) << self
  end

  ######################################
  # player specific stat functionality #
  ######################################

  def armour=(amount)
    amount = 0 if amount < 0
    @armour = amount
  end

  def attack
    result = super
    if weapon
      result += weapon.attack
    end
  end

  def deal_damage(opts = {})
    result = fire_hook(:attack, { source: self }.merge(opts))
    opts[:damage] -= result
    opts[:damage] -= armour
    opts[:damage] = 0 if opts[:damage] < 0
    self.armour -= opts[:damage]
    super
  end

  ###################
  # card management #
  ###################

  def add_card(card)
    if Card === card
      hand << card
    else
      hand.concat card
    end
  end

  def play_card(card)
    if hande.include? card
      card.play self
      hand.delete card
    end
  end

  def summon(card)
    card.play(self)
  end

  def discard(card)
    self.hand.delete card
  end

  def draw(amount = 1)
    result = deck.draw(amount)
    if result.size < amount
      (amount - result.size).times { self.fatigue_damage }
    end
    hand.concat result
    result
  end

  def fatigue_damage
    @fatigue_damage += 1
    self.deal_damage(@fatigue_damage)
  end

  #####################
  # minion management #
  #####################

  def add_minion(minion)
    minions << minion
    minion.minion_group = minions
    spell_damage += minion.spell_damage
    $game.fire_hook :summon, source: self, minion: minion
  end

  def return_minion_to_hand(minion)
    add_card Cards.get(name: minion.name)
    minions.delete minion
  end

  def destroy_minion(minion)
    spell_damage -= minion.spell_damage
    minions.delete minion
  end
end