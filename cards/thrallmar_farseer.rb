require './minion'

class ThrallmarFarseer < Minion
  def initialize
    super
    self.cost = 3
    self.attack = 2
    self.max_health = 3
    self.name = "Thrallmar Farseer"
	  self.windfury = true
  end

end
