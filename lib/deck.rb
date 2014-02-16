require './cards'
require './card'

class Deck
  attr_accessor :deck_class, :base_cards, :cards, :name

  def initialize(opts = {})
    self.init_cards
  end

  def init_cards
    @cards = Array.new
    @base_cards.each do |card_ref|
      @cards.concat Cards.get(card_ref[:name], card_ref[:amount])
    end
    self.shuffle
  end

  def shuffle
    @cards.shuffle!
  end

  def draw(amount)
    @cards.slice!(0, amount)
  end

  def add_card(card)
    @cards << card
  end

  def hero_power(player)
  end
end