require './cards/minion'

class Squirrel < Minion
  def initialize
    super
    self.name = 'Squirrel'
    self.attack = 1
    self.max_health = 1
    self.cost = 1
    self.type = 'Beast'
  end
end
