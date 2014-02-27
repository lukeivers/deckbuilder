require './minion'

class CaptainGreenskin < Minion
  def initialize
    super
    self.name = "Captain Greenskin"
    self.cost = 5
    self.attack = 5
    self.max_health = 4
	  self.legendary = true
	self.type = "Pirate"
  end

  def battlecry
    super
	#Give your weapon +1/+1
	end
end
