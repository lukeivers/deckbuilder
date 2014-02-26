require './minion'

class MechanicalDragonling < Minion
  def initialize
    super
    self.name = 'Mechanical Dragonling'
    self.attack = 2
    self.max_health = 1
    self.cost = 1
  end
end
