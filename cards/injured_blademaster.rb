require './cards/minion'

class InjuredBlademaster < Minion
  def initialize
    @name = "Injured Blademaster"
    @cost = 3
    @attack = 4
    @max_health = 7
    super
  end

  def play(player)
    super
	#Deal 3 damage to HIMSELF.
  end
end
