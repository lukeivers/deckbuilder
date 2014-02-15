require './deck'
require './cards'
require './card'
require './character'
require './weapon'

class Player
  include Character

  attr_accessor :deck, :hand, :max_mana, :mana, :opponent, :minions, :weapon, :wins, :spell_damage
  attr_accessor :global_attack_bonus, :global_health_bonus

  def initialize(opts = {})
    @max_health = 30
    @hand = Array.new
    @minions = Array.new
    @max_mana = 0
    @weapon = nil
    @spell_damage = 0
    @global_attack_bonus = 0
    @global_health_bonus = 0
    @wins = 0
    super
  end

  def reset
    @hand = Array.new
    @minions = Array.new
    @max_mana = 0
    @health = 30
    @weapon = nil
    @deck.init_cards
  end

  def add_global_attack_bonus(bonus)
    @global_attack_bonus += bonus
  end
  def add_global_health_bonus(bonus)
    @global_health_bonus += bonus
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
    hand.concat deck.draw(amount)
  end

  def add_card(card)
    if Array === card
      hand.concat card
    else
      hand << card
    end
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
    super
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
    available_targets
  end

  def best_target(damage, evades_taunt=false)
    determine_targets(evades_taunt).first
  end

  def best_smurfing_target
    targets = determine_targets(true)
    targets.delete @opponent
    targets.first
  end

  def random_target(evades_taunt=false)
    determine_targets(evades_taunt).shuffle.first
  end

  def play
  end
end