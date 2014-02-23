require './cards/minion'

class ScarletCrusader < Minion
  def initialize
    self.name = "Scarlet Crusader"
    self.cost = 3
    self.attack = 3
    self.max_health = 1
    self.divine_shield = true
    super
  end

end
