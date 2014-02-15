require './deck'
require './cards'
require './card'
require './character'
require './weapon'

class Player
  include Character

  attr_accessor :deck, :hand, :max_mana, :mana, :opponent, :minions, :weapon, :wins

  def initialize(opts = {})
    @max_health = 30
    @name = opts[:name]
    @hand = Array.new
    @minions = Array.new
    @max_mana = 0
    @weapon = nil
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

  def grant_minion_bonus(attack_bonus = nil, health_bonus = nil)
    bonus_minion = @minions.sort {|a, b| a.health <=> b.health}.last
    if health_bonus
      health_int = health_bonus.to_i
      if health_int >= 0
        bonus_minion = @minions.sort {|a, b| a.health <=> b.health}.first
      end
    end
    bonus_minion.add_max_health(health_int)
    bonus_minion.add_attack(attack_bonus.to_i)
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
    targets = determine_targets(evades_taunt)
    targets.sort {|a, b| a.health <=> b.health}
    target = targets[0]
    targets.each do |potential_target|
      if potential_target.health <= damage
        target = potential_target
      end
    end
    target
  end

  def random_target(evades_taunt=false)
    determine_targets(evades_taunt).shuffle.first
  end

  def play
    @hand.sort { |a, b| a.cost <=> b.cost }
    @hand.reverse.each do |card|
      if @mana > card.cost
        card.play(self)
        Logger.log @name + ' played ' + card.name + '.'
        @hand.delete(card)
      end
    end


    if @minions.size > 0
      targets = determine_targets

      @minions.each do |minion|
        if minion.can_attack?
          target = targets[0]
          target_name = target.name
          Logger.log @name + '\'s ' + minion.name + ' attacked ' + target_name + '.'
          dead = minion.attack_target(target)
          if dead == -1
            Logger.log self.name + ' killed ' + target_name + '.'
            if target == opponent
              break
            end
            targets.delete(target)
            if targets.size == 0
              targets = determine_targets
            end
          end
        end
      end
    end
  end
end