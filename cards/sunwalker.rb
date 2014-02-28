require './minion'

class Sunwalker < Minion
  def initialize
    super
    self.name = "Sunwalker"
    self.cost = 6
    self.attack = 4
    self.max_health = 5
    self.divine_shield = true
    self.taunt = true
  end

end
