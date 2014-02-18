require './cards/minion'

class ManaWraith < Minion
  def initialize
    @name = "Mana Wraith"
    @cost = 2
    @attack = 2
    @max_health = 2
	  super
	#ALL minions cost (1) more
  end

end
