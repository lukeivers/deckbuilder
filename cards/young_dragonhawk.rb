require './cards/minion'

class YoungDragonhawk < Minion
  def initialize
    @cost = 1
    @attack = 1
    @max_health = 1
    @name = "Young Dragonhawk"
	#windfury = true
    super
  end

end
