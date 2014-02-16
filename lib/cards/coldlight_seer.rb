require './cards/minion'

class ColdlightSeer < Minion
  def initialize
    @name = "Coldlight Seer"
    @cost = 3
    @attack = 2
    @max_health = 3
	#type = murloc
    super
  end

  def play(player)
    super
	#Give ALL other Murlocs +2 health
  end

end
