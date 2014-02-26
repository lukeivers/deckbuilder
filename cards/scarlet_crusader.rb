require './minion'

class ScarletCrusader < Minion
  def initialize
    super
    self.name = "Scarlet Crusader"
    self.cost = 3
    self.attack = 3
    self.max_health = 1
    self.divine_shield = true
  end

end
