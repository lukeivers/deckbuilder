require './cards/minion'

class ManaAddict < Minion
  def initialize
    self.name = "Mana Addict"
    self.cost = 2
    self.attack = 1
    self.max_health = 3
	  super
	#Whenever you cast a spell, gain +2 Attack this turn
  end

end
