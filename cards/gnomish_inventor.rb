require './cards/minion'

class GnomishInventor < Minion
  def initialize
    @cost = 4
    @name = 'Gnomish Inventor'
    @attack = 2
    @max_health = 4
    super
  end
  def play(player)
    super
    player.draw(1)
  end
end