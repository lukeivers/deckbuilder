require './character'
require './decks'
require './hand'
require './minion_group'

class Player
  include Character

  attr_accessor :deck, :hand, :max_mana, :mana, :opponent, :minions, :weapon, :wins, :spell_damage
  attr_accessor :fatigue_damage, :cards_played, :armour, :game, :spell_cost, :minion_cost, :rounds_per_deck
  attr_accessor :current_rounds

  def start_game(game)
    self.game = game
    reset
  end

  def reset
    self.hand = Hand.new
    self.minions = MinionGroup.new
    self.minions.owner = self
    self.max_mana = 0
    self.health = 30
    self.weapon = nil
    self.spell_damage = 0
    self.fatigue_damage = 0
    self.armour = 0
    self.spell_cost = 0
    self.minion_cost = 0
    self.temporary_attack = 0
    @game = nil
    if rounds_per_deck
      self.current_rounds += 1
      if current_rounds > rounds_per_deck
        self.current_rounds = 0
        @deck.new_mutation
      end
    end
    @deck.init_cards
  end

  def initialize(opts = {})
    super
    self.current_rounds = 0
    self.deck = Decks.get(name: opts[:deck])
    if opts[:mutate]
      self.rounds_per_deck = opts[:mutate]
    end
    if opts[:opponent]
      self.opponent = opts[:opponent]
      self.opponent.opponent = self
    end
    if opts[:name]
      self.name = opts[:name]
    end
    self.max_health = 30
    self.wins = 0
    self.reset
  end

  def start_turn
    super
    Logger.log self.to_s
    Logger.log minions.to_s
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
    Logger.log "#{self.name} ended their turn."
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
    end
    if opts[:include_opponent]
      targets << opponent
    end
    if opts[:include_self]
      targets << self
    end
    targets.shuffle.first
  end

  def cast_damage_spell(opts = {})
    best_target(opts).deal_damage(opts)
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
      targets.each do |target|
        if target
          target.attack += opts[:attack] if opts[:attack]
          target.max_health += opts[:health] if opts[:health]
          target.taunt = opts[:taunt] if opts[:taunt]
          target.spell_damage += opts[:spell_damage] if opts[:spell_damage]
          self.spell_damage += opts[:spell_damage] if opts[:spell_damage]
        end
      end
    end
  end

  def targets
    Array.new.concat(minions) << self
  end

  def determine_targets(opts = {})
    result = Array.new.concat(opponent.minions.targetable(opts))
    if opts[:include_opponent]
      result << opponent
    end
    result
  end

  def freeze_character(opts = {})
    target = choose_best_freeze_target
    target.freeze if target
  end

  def silence_minion(opts = {})
    target = best_silence_target
    if target
      target.silence
    end
  end

  def heal_target(opts = {})
    choose_best_heal_target(opts).health += opts[:amount]
  end

  def return_minion
    target = choose_minion_to_return
    add_card Cards.get(name: target.name)
    target.destruct
    destroy_minion(target)
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
    result
  end

  def deal_damage(opts = {})
    if armour > 0
      if opts[:damage] >= armour
        opts[:damage] -= armour
        self.armour = 0
      else
        self.armour -= opts[:damage]
        opts[:damage] = 0
      end
    end
    super
  end

  def attack_target(opts = {})
    super
    if weapon
      weapon.durability -= 1
    end
  end

  def name
    "#{@name}/#{self.deck.name}"
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
    if hand.include? card
      card.play self
      hand.delete card
    end
  end

  def summon(card)
    card.play(self)
  end

  def discard(card)
    hand.delete card
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
    self.deal_damage(damage: @fatigue_damage)
  end

  #####################
  # minion management #
  #####################

  def add_minion(minion, hook = true)
    minions << minion
    minion.minion_group = minions
    self.spell_damage += minion.spell_damage
    if hook
      $game.fire_hook :summon, source: self, minion: minion
    end
  end

  def return_minion_to_hand(minion)
    add_card Cards.get(name: minion.name)
    minions.delete minion
  end

  def destroy_minion(minion)
    self.spell_damage -= minion.spell_damage
    minions.delete minion
  end

  def to_s
    "#{self.name} - Health: #{self.health}, Armour: #{self.armour}, Weapon: #{self.weapon}, Hand: #{hand}"
  end

  def short_string
    "#{self.name} - #{self.attack}/#{self.health}/#{self.armour}"
  end

  def win
    self.wins += 1
    deck.win
  end

  def lose
    deck.lose
  end
end