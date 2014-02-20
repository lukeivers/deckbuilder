require './cards/minion'

class ThrallmarFarseer < Minion
  def initialize
    @cost = 3
    @attack = 2
    @max_health = 3
    @name = "Thrallmar Farseer"
	#windfury = true
    super
  end

end
