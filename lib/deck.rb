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

  def mutate
    replacement = Cards.get_random(self)
    tuple = @base_cards.slice!(rand(@base_cards.size))
    puts tuple[:name] + '->' + replacement.name
    @base_cards << { name: replacement.name, amount: tuple[:amount]}
  end

  def include?(card)
    found = @base_cards.find {|bcard| bcard[:name] == card.name}
    if found.nil?
      false
    else
      true
    end
  end
end