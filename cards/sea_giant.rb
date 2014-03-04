require './minion'

class SeaGiant < Minion
  def initialize
    super
    self.name = "Sea Giant"
    self.cost = 10
    self.attack = 8
    self.max_health = 8
	#Costs (1) less for each other minion on the battlefield
  end

end
