require './cards/minion'

class ThrallmarFarseer < Minion
  def initialize
    self.cost = 3
    self.attack = 2
    self.max_health = 3
    self.name = "Thrallmar Farseer"
	#windfury = true
    super
  end

end
