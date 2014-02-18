require './cards/minion'

class HarvestGolem < Minion
  def initialize
    @cost = 3
    @name = 'Harvest Golem'
    @attack = 2
    @max_health = 3
    super
  end

  def die
    super
	#Deathrattle: Summon a 2/1 Damaged Golem
  end


end
