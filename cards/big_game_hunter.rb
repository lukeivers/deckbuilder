require './cards/minion'

class BigGameHunter < Minion
  def initialize
    @cost = 3
    @attack = 4
    @max_health = 2
    @name = "Big Game Hunter"
    super
  end

  def play(player)
    super
	#Destroy a minion with an Attack of 7 or more.
  end
end
