require './logger'

class Card
  attr_accessor :owner, :name, :cost, :deck_class, :description

  def play(player)
    self.owner = player
    owner.mana -= self.cost
    owner.cards_played += 1
    $game.fire_hook :card_played, source: self
  end

  def minion?
    false
  end
end