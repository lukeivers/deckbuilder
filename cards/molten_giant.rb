require './minion'

class MoltenGiant < Minion
  def initialize
    super
    self.name = "Molten Giant"
    self.cost = 20
    self.attack = 8
    self.max_health = 8
	#Costs (1) less for each damage your hero has taken.
  end

end
