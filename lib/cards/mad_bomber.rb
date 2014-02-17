require './cards/minion'

class MadBomber < Minion
  def initialize
    @name = "Mad Bomber"
    @cost = 2
    @attack = 3
    @max_health = 2
    super
  end

  def play(player)
    super
	#Deal 3 damage randomly split between all other characters
  end
end
