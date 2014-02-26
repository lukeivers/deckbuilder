require './minion'

class Shieldbearer < Minion
  def initialize
    super
    self.taunt = true
    self.cost = 1
    self.attack = 0
    self.max_health = 4
    self.name = "Shieldbearer"
  end

end
