require './minion'

class Nozdormu < Minion
  def initialize
    super
    self.name = "Nozdormu"
    self.cost = 9
    self.attack = 8
    self.max_health = 8
	  self.legendary = true
	self.type = "Dragon"
	#Players only have 15 seconds to take their turns
  end

end
