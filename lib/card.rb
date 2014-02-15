require './logger'

class Card
  attr_accessor :name, :cost

  def play(player)
    player.remove_mana(self.cost)
  end

end