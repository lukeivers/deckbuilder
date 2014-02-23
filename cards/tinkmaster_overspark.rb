require './cards/minion'

class TinkmasterOverspark < Minion
  def initialize
    self.name = "Tinkmaster Overspark"
    self.cost = 3
    self.attack = 2
    self.max_health = 2
	  self.legendary = true
    super
  end

  def battlecry
    super
	#Transform a minion into a 5/5 Devlisaur or a 1/1 Squirrel at random
	end


end
