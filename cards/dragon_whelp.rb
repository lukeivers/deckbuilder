require './cards/minion'

class DragonWhelp < Minion
  def initialize
    self.name = 'Dragon Whelp'
    self.attack = 1
    self.max_health = 1
    self.cost = 0
    super
  end
end