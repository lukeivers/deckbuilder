require './cards/minion'

class Doomsayer < Minion
  def initialize
    @cost = 2
    @attack = 0
    @max_health = 7
    @name = "Doomsayer"
	#At the start of your turn, destroy ALL minions
    super
  end

end
