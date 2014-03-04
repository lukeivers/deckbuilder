require './minion'

class MountainGiant < Minion
  def initialize
    super
    self.name = "Mountain Giant"
    self.cost = 12
    self.attack = 8
    self.max_health = 8
	#Costs (1) less for each other card in your hand.
  end

end
