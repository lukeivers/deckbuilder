require './cards/spell'

class Tracking < Spell
  def initialize
    super
    self.cost = 1
    self.name = 'Tracking'
    self.deck_class = 'Hunter'
  end

  def battlecry
    super
    cards = owner.draw 3
    if cards.size > 1
      best_card = owner.choose_best_card cards
      cards.delete best_card
      cards.each do |card|
        owner.discard card
      end
    end
  end
end
