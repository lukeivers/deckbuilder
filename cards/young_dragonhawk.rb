require './cards/minion'

class YoungDragonhawk < Minion
  def initialize
    self.cost = 1
    self.attack = 1
    self.max_health = 1
    self.name = "Young Dragonhawk"
	#windfury = true
    super
  end

end
