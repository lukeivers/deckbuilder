require './cards/minion'

class GnomishInventor < Minion
  def initialize
    self.cost = 4
    self.name = 'Gnomish Inventor'
    self.attack = 2
    self.max_health = 4
    super
  end
  def battlecry
    super
    player.draw(1)
  end
end