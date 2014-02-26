require './minion'

class DamagedGolem < Minion
  def initialize
    super
    self.name = "Damaged Golem"
    self.cost = 0
    self.attack = 2
    self.max_health = 1
  end

end
