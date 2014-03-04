require './minion'

class Onyxia < Minion
  def initialize
    super
    self.name = "Onyxia"
    self.cost = 9
    self.attack = 8
    self.max_health = 8
	  self.legendary = true
	self.type = "Dragon"
  end

  def battlecry
    super
	#Summon 1/1 Whelps until your side of the battlefield is full.
	end
end
