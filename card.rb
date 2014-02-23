require './logger'

class Card
  attr_accessor :owner, :name, :cost, :deck_class, :description

  def play(player)
    owner = player
    owner.mana -= self.cost
    owner.cards_played += 1
  end

end