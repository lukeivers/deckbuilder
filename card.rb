require './logger'

class Card
  attr_accessor :name, :cost, :deck_class

  def play(player)
    player.remove_mana(self.cost)
  end

end