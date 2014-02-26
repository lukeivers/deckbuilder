require './cards/minion'

class DreadCorsair < Minion
  def initialize
    super
    self.name = "Dread Corsair"
    self.cost = 4
    self.attack = 3
    self.max_health = 3
	  self.type = 'Pirate'
	self.taunt = true
	#Costs (1) less per Attack of your weapon
  end

end
