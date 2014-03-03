require './minion'

class Alexstrasza < Minion
  def initialize
    super
    self.name = "Alexstrasza"
    self.cost = 9
    self.attack = 8
    self.max_health = 8
	  self.legendary = true
	self.type = "Dragon"
  end

  def battlecry
    super
	#Set a hero's remaining health to 15
  end
end
