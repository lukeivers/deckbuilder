require './minion'

class HomingChicken < Minion
  def initialize
    super
    self.name = "Homing Chicken"
    self.cost = 1
    self.attack = 0
    self.max_health = 1
  end

  def start_turn
    super
    owner.draw 3
    owner.destroy_minion(self)
  end
end
