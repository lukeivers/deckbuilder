require './minion'

class FlameOfAzzinoth < Minion
  def initialize
    super
    self.cost = 1
    self.attack = 2
    self.max_health = 1
    self.name = "Flame of Azzinoth"
  end

end
