require './cards/minion'

class FaerieDragon < Minion
  def initialize
    @cost = 2
    @attack = 3
    @max_health = 2
    @name = "Faerie Dragon"
	  #TODO: Can't be targeted by Spells or Hero Powers
    super
  end

end
