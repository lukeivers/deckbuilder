require './cards/minion'

class VoodooDoctor < Minion
  def initialize
    @name = "Voodoo Doctor"
    @cost = 1
    @attack = 2
    @max_health = 1
    super
  end

  def play(player)
    super
	#Restore 2 health
  end
end
