require './cards'
require './card'

class Deck
  attr_accessor :deck_class, :cards

  def initialize(opts = {})
    @deck_class = opts[:deck_class]
    self.init_cards
  end

  def init_cards
    @cards = Array.new
    @cards.concat Cards.get('Goldshire Footman', 2)
    @cards.concat Cards.get('Arcane Missiles', 2)
    @cards.concat Cards.get('Frostbolt', 2)
    @cards.concat Cards.get('Acidic Swamp Ooze', 2)
    @cards.concat Cards.get('Novice Engineer', 2)
    @cards.concat Cards.get('Arcane Intellect', 2)
    @cards.concat Cards.get('Shattered Sun Cleric', 2)
    @cards.concat Cards.get('Water Elemental', 2)
    @cards.concat Cards.get('Gnomish Inventor', 2)
    @cards.concat Cards.get('Fireball', 2)
    @cards.concat Cards.get('Polymorph', 2)
    @cards.concat Cards.get('Chillwind Yeti', 2)
    @cards.concat Cards.get('Gurubashi Berserker', 2)
    @cards.concat Cards.get('Archmage', 1)
    @cards.concat Cards.get('Stormwind Champion', 1)
    @cards.concat Cards.get('Flamestrike', 2)
    self.shuffle
  end

  def shuffle
    @cards.shuffle!
  end

  def draw(amount)
    @cards.slice!(0, amount)
  end
end