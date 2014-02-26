require './minion'

class YoungDragonhawk < Minion
  def initialize
    super
    self.cost = 1
    self.attack = 1
    self.max_health = 1
    self.name = "Young Dragonhawk"
	  self.windfury = true
  end

end
