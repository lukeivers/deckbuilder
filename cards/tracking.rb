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
    #TODO: sometimes cards is nil.  make sure it's only when there actually aren't any cards to draw.
    best_card = self.owner.choose_best_card(cards)
    if best_card
      self.owner.add_card(best_card)
    end
  end
end
