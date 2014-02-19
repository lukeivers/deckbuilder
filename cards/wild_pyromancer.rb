require './cards/minion'

class WildPyromancer < Minion
  def initialize
    @cost = 2
    @attack = 3
    @max_health = 2
    @name = "Wild Pyromancer"
	#After you cast a spell, deal 1 damage to ALL minions
    super
  end

end
