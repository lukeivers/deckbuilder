require './cards/minion'

class Demolisher < Minion
  def initialize
    @name = "Demolisher"
    @cost = 3
    @attack = 1
    @max_health = 4
	#At the start of your turn, deal 2 damage to a random enemy.
    super
  end

end
