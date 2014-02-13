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

  def play
    @hand.sort { |a, b| a.cost <=> b.cost }
    @hand.reverse.each do |card|
      if @mana > card.cost
        card.play(self)
        puts @name + ' played ' + card.name + '.'
        @hand.slice!(@hand.index(card))
      end
    end

    @available_targets = Array.new
    @available_targets << @opponent
    @available_targets.concat @opponent.minions

    @minions.each do |minion|
      if not minion.frozen?
        target = @opponent
        puts @name + '\'s ' + minion.name + ' attacked ' + target.name + '.'
        minion.attack_target(target)
      end
    end
  end
end