require './cards/minion'

class CrazedAlchemist < Minion
  def initialize
    @name = "Crazed Alchemist"
    @cost = 2
    @attack = 2
    @max_health = 2
    super
  end

  def play(player)
    super
	#Swap the Attack and Health of a minion
  end
end
