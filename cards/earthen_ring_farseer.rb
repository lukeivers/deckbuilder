require './cards/minion'

class EarthenRingFarseer < Minion
  def initialize
    self.name = "Earthen Ring Farseer"
    self.cost = 3
    self.attack = 3
    self.max_health = 3
    super
  end

  def battlecry
    super
	#Restore 3 Health.
  end

end
