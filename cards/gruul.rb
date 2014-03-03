require './minion'

class Gruul < Minion
  def initialize
    super
    self.name = "Gruul"
    self.cost = 8
    self.attack = 7
    self.max_health = 7
	  self.legendary = true
	#At the end of each turn, gain +1/+1
  end
end
