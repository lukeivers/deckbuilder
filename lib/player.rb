require './deck'
require './cards'
require './card'
require './character'
require './weapon'
require 'pp'

class Player < Character
  attr_accessor :deck, :hand, :max_mana, :mana, :health, :opponent, :minions, :weapon

  def initialize(opts = {})
    @hand = Array.new
    @minions = Array.new
    @max_mana = 0
    @weapon = nil
    super
  end

  def set_opponent(opponent)
    @opponent = opponent
  end

  def set_weapon(weapon)
    @weapon = nil
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

  def determine_targets
    @available_targets = Array.new
    @opponent.minions.each do |minion|
      if minion.taunt?
        @available_targets << minion
      end
    end
    if @available_targets.length == 0
      @available_targets << @opponent
      @available_targets.concat @opponent.minions
    end
  end

  def play
    @hand.sort { |a, b| a.cost <=> b.cost }
    @hand.reverse.each do |card|
      if @mana > card.cost
        card.play(self)
        puts @name + ' played ' + card.name + '.'
        @hand.delete(card)
      end
    end

    determine_targets

    @minions.each do |minion|
      if minion.can_attack?
        target = @available_targets[0]
        target_name = target.name
        puts @name + '\'s ' + minion.name + ' attacked ' + target_name + '.'
        dead = minion.attack_target(target)
        if dead
          puts self.name + ' killed ' + target_name + '.'
          if target == opponent
            break
          end
          @available_targets.delete(target)
          if @available_targets.size == 0
            self.determine_targets
          end
        end
      end
    end
  end
end