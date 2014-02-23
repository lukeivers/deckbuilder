require './cards/minion'

class InjuredBlademaster < Minion
  def initialize
    self.name = "Injured Blademaster"
    self.cost = 3
    self.attack = 4
    self.max_health = 7
    super
  end

  def battlecry
    super
	#Deal 3 damage to HIMSELF.
  end
end
