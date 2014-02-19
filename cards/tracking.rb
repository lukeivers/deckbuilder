require './cards/spell'

class Tracking < Spell
  def initialize
    @cost = 1
    @name = 'Tracking'
    @deck_class = 'Hunter'
    super
  end
  def play(player)
    super
    cards = self.owner.deck.draw(3)
    best_card = self.owner.choose_best_card(cards)
    self.owner.add_card(best_card)
  end
end
