require './minion'

class Squire < Minion
  def initialize
    super
    self.name = 'Squire'
    self.attack = 2
    self.max_health = 2
    self.cost = 1
  end
end
