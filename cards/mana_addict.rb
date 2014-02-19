require './cards/minion'

class ManaAddict < Minion
  def initialize
    @name = "Mana Addict"
    @cost = 2
    @attack = 1
    @max_health = 3
	  super
	#Whenever you cast a spell, gain +2 Attack this turn
  end

end
