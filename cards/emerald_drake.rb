require './minion'

class EmeraldDrake < Minion
  def initialize
    super
    self.name = "Emerald Drake"
    self.cost = 4
    self.attack = 7
    self.max_health = 6
	self.type = "Dragon"
  end
end
