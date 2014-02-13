require 'deck'
require 'cards'
require 'card'
require 'character'

class Player < Character
  attr_accessor :deck, :hand, :max_mana, :mana, :name, :health, :opponent, :minions

  def initialize(opts = {})
    @hand = Array.new
    @minions = Array.new
    @name = opts[:name]
    super
  end

  def set_opponent(opponent)
    @opponent = opponent
  end

  def add_minion(minion)
    @minions << minion
  end

  def draw(amount = 1)
    hand.concat deck.draw(amount)
  end

  def add_card(card)
    hand << card
  end

  def add_mana_crystal(amount = 1)
    @max_mana += amount
  end

  def dead?
    @health <= 0
  end

  def remove_mana(amount)
    @mana -= cost
  end

  def start_round
    @mana = @max_mana
    @minions.each do |minion|
      minion.start_round
    end
    super
  end

  def play
    @hand.sort { |a, b| a.cost <=> b.cost }
    @hand.reverse.each do |card|
      if @mana > card.cost
        card.play(self)
      end
    end
  end
end