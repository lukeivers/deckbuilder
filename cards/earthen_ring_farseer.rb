require './cards/minion'

class EarthenRingFarseer < Minion
  def initialize
    @name = "Earthen Ring Farseer"
    @cost = 3
    @attack = 3
    @max_health = 3
    super
  end

  def play(player)
    super
	#Restore 3 Health.
  end

end
