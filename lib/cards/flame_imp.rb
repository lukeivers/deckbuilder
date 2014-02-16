require './cards/minion'

class FlameImp < Minion
  def initialize
    @name = "Flame Imp"
    @cost = 1
    @attack = 3
    @max_health = 2
	#type = demon
    @deck_class = 'Warlock'

    super
  end

  def play(player)
    super
	#Deal 3 damage to your hero
  end
end
