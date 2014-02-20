require './cards/minion'

class TinkmasterOverspark < Minion
  def initialize
    @name = "Tinkmaster Overspark"
    @cost = 3
    @attack = 2
    @max_health = 2
	  @legendary = true
    super
  end

  def play(player)
    super
	#Transform a minion into a 5/5 Devlisaur or a 1/1 Squirrel at random
	end


end
