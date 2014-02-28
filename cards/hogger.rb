require './minion'

class Hogger < Minion
  def initialize
    super
    self.name = "Hogger"
    self.cost = 6
    self.attack = 4
    self.max_health = 4
	  self.legendary = true
  end

	#At the end of your turn, summon a 2/2 Gnoll with Taunt

end
