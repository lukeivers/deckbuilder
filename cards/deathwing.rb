require './minion'

class Deathwing < Minion
  def initialize
    super
    self.name = "Deathwing"
    self.cost = 10
    self.attack = 12
    self.max_health = 12
	  self.legendary = true
	self.type = "Dragon"
  end

  def battlecry
    super
	#Destroy all other minions and discard your hand.
	end
end
