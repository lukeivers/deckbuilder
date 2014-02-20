require './deck'
require './cards'
require './card'
require './character'
require './weapon'

class Player
  include Character

  attr_accessor :deck, :hand, :max_mana, :mana, :opponent, :minions, :weapon, :wins, :spell_damage
  attr_accessor :global_attack_bonus, :global_health_bonus, :coin_wins, :fatigue_damage, :murloc_attack_bonus
  attr_accessor :murloc_health_bonus, :beast_attack_bonus, :beast_health_bonus, :cards_played, :armour
  attr_accessor :on_attack_hooks, :on_summon_hooks, :game, :on_death_hooks, :on_minion_damage_hooks

  def initialize(opts = {})
    @max_health = 30
    @hand = Array.new
    @minions = Array.new
    @attack = 0
    @max_mana = 0
    @spell_damage = 0
    @global_attack_bonus = 0
    @global_health_bonus = 0
    @murloc_attack_bonus = 0
    @murloc_health_bonus = 0
    @beast_attack_bonus = 0
    @beast_health_bonus = 0
    @wins = 0
    @coin_wins = 0
    @fatigue_damage = 0
    @on_attack_hooks = Array.new
    @on_summon_hooks = Array.new
    @on_death_hooks = Array.new
    @on_minion_damage_hooks = Array.new
    @armour = 0
    super
  end

  def add_attack_hook(spell)
    on_attack_hooks << spell
  end

  def add_summon_hook(spell)
    on_summon_hooks << spell
  end

  def add_death_hook(spell)
    on_death_hooks << spell
  end

  def add_minion_damage_hook(spell)
    on_minion_damage_hooks << spell
  end

  def cause_death_hook(source)
    on_death_hooks.each do |hooker|
      hooker.on_death(self, source)
    end
  end

  def cause_minion_damage_hook(minion, amount, source)
    on_minion_damage_hooks.each do |hooker|
      hooker.on_minion_damage(self, minion, amount, source)
    end
  end

  def remove_minion_damage_hook(spell)
    on_minion_damage_hooks.delete spell
  end

  def remove_death_hook(spell)
    on_death_hooks.delete spell
  end

  def reset
    @hand = Array.new
    @minions = Array.new
    @max_mana = 0
    @health = 30
    @weapon = nil
    @spell_damage = 0
    @global_attack_bonus = 0
    @global_health_bonus = 0
    @murloc_attack_bonus = 0
    @murloc_health_bonus = 0
    @beast_attack_bonus = 0
    @beast_health_bonus = 0
    @fatigue_damage = 0
    @armour = 0
    @on_attack_hooks = Array.new
    @on_summon_hooks = Array.new
    @on_death_hooks = Array.new
    @game = nil
    @deck.init_cards
  end

  def add_armour(amount)
    @armour += amount
  end

  def add_global_bonus(attack_bonus, health_bonus)
    @global_attack_bonus += attack_bonus
    @global_health_bonus += health_bonus
    self.minions.each do |minion|
      minion.add_attack attack_bonus
      minion.add_max_health health_bonus
    end
  end

  def add_murloc_bonus(attack_bonus, health_bonus)
    @murloc_attack_bonus += attack_bonus
    @murloc_health_bonus += health_bonus
    self.minions.select {|minion| minion.type == 'Murloc'}.each do |minion|
      minion.add_attack attack_bonus
      minion.add_max_health health_bonus
    end
  end

  def add_beast_health_bonus(attack_bonus, health_bonus)
    @beast_attack_bonus += attack_bonus
    @beast_health_bonus += health_bonus
    self.minions.select {|minion| minion.type == 'Beast'}.each do |minion|
      minion.add_attack attack_bonus
      minion.add_max_health health_bonus
    end
  end

  def summon(card)
    card.play(self)
  end

  def discard(card)
    self.hand.delete card
  end

  def add_spell_damage(amount)
    @spell_damage += amount
  end

  def choose_bonus_minion(attack_bonus = nil, health_bonus = nil)
    @minions.first
  end

  def grant_minion_bonus(attack_bonus = '0', health_bonus = '0')
    health_int = health_bonus.to_i
    attack_int = attack_bonus.to_i
    bonus_minion = self.choose_bonus_minion(attack_int, health_int)
    bonus_minion.add_max_health(health_int)
    bonus_minion.add_attack(attack_int)
  end

  def set_opponent(opponent)
    @opponent = opponent
  end

  def set_weapon(weapon)
    @weapon = weapon
  end

  def add_minion(minion)
    @minions << minion
    on_summon_hooks.each do |hooker|
      hooker.on_summon(self, minion)
    end
  end

  def destroy_minion(minion)
    @minions.delete(minion)
  end

  def draw(amount = 1)
    result = deck.draw(amount)
    if result.size < amount
      (amount - result.size).times { self.fatigue_damage }
    end
    hand.concat deck.draw(amount)
    result
  end

  def fatigue_damage
    @fatigue_damage += 1
    self.deal_damage(@fatigue_damage)
  end

  def remove_attack_hook(spell)
    self.on_attack_hooks.delete spell
  end

  def remove_summon_hook(spell)
    self.on_summon_hooks.delete spell
  end

  def silenced_minion_hook(minion)
    on_summon_hooks.each do |hooker|
      if hooker == minion
        on_summon_hooks.delete hooker
      end
    end
    on_attack_hooks.each do |hooker|
      if hooker == minion
        on_summon_hooks.delete hooker
      end
    end
  end

  def best_silence_target
    self.opponent.minions.shuffle.first
  end

  def deal_damage(amount, source=nil)
    if self.on_attack_hooks.size > 0
      self.on_attack_hooks.each do |hooker|
        amount -= hooker.on_attack(self, amount, source)
      end
    end
    if amount.nil?
      amount = 0
    end
    if amount <= 0
      return 0
    end
    if self.armour > 0
      overage = amount - self.armour
      if overage > 0
        super(overage, source)
      end
      self.armour -= amount
      if self.armour < 0
        self.armour = 0
      end
    else
      super
    end
  end

  def add_card(card)
    if Array === card
      hand.concat card
    else
      hand << card
    end
  end

  def choose_best_card(cards)
    cards.shuffle.first
  end

  def add_mana(amount = 1)
    @mana += 1
  end

  def add_mana_crystal(amount = 1)
    @max_mana += amount
  end

  def dead?
    @health <= 0
  end

  def remove_mana(amount)
    @mana -= amount
  end

  def start_round
    @mana = @max_mana
    @minions.each do |minion|
      minion.start_round
    end
    @cards_played = 0
    super
  end

  def end_turn
    super
    @minions.each do |minion|
      minion.end_turn
    end
  end

  def attack
    if weapon
      @attack + weapon.attack
    else
      @attack
    end
  end

  def mulligan

  end

  def determine_targets(evades_taunt=false)
    available_targets = Array.new
    if not evades_taunt
      @opponent.minions.each do |minion|
        if minion.taunt?
          available_targets << minion
        end
      end
    end
    if available_targets.length == 0
      available_targets << @opponent
      available_targets.concat @opponent.minions
    end
    available_targets.delete_if {|target| target.minion? and target.stealth?}
    available_targets
  end

  def best_target(damage, evades_taunt=false)
    random_target(evades_taunt)
  end

  def best_smurfing_target
    random_target(true, false)
  end

  def random_target(evades_taunt=false, include_opponent=true)
    targets = @opponent.minions.dup
    if include_opponent
      targets << @opponent
    end
    targets.shuffle.first
  end

  def play
  end
end