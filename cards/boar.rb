require './minion'

class Boar < Minion
  def initialize
    super
    self.name = 'Boar'
    self.attack = 1
    self.max_health = 1
    self.cost = 0
    self.type = 'Beast'
  end
end
