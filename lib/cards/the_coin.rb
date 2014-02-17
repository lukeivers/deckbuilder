require './card'

class TheCoin < Card
  def initialize
    @cost = 0
    @name = 'The Coin'
    super
  end

  def play(player)
    super
    player.add_mana(1)
  end
end