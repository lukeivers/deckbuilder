require './deck'
require './cards'
require './card'
require './character'
require './weapon'

class Player
  include Character

  attr_accessor :deck, :hand, :max_mana, :mana, :opponent, :minions, :weapon, :wins, :spell_damage
  attr_accessor :global_attack_bonus, :global_health_bonus, :coin_wins, :fatigue_damage, :murloc_attack_bonus
  attr_accessor :murloc_health_bonus, :beast_attack_bonus, :beast_health_bonus, :cards_played

  def initialize(opts = {})
    @max_health = 30
    @hand = Array.new
    @minions = Array.new
    @max_mana = 0
    @weapon = nil
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
    super
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
    @deck.init_cards
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
  end

  def fatigue_damage
    @fatigue_damage += 1
    self.deal_damage(@fatigue_damage)
  end

  def add_card(card)
    if Array === card
      hand.concat card
    else
      hand << card
    end
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
    @minions.each do |minion|
      minion.end_turn
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