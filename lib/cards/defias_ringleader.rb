require './cards/minion'

class DefiasRingleader < Minion
  def initialize
    @name = "Defias Ringleader"
    @cost = 2
    @attack = 2
    @max_health = 2
    @deck_class = 'Rogue'
    super
  end

  def play(player)
    super
	#Combo: Summon a 2/1 Defias Bandit
  end
end
