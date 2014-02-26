require './minion'

class EarthenRingFarseer < Minion
  def initialize
    super
    self.name = "Earthen Ring Farseer"
    self.cost = 3
    self.attack = 3
    self.max_health = 3
  end

  def battlecry
    super
  	owner.health += 3
  end

end
