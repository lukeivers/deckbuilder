require './cards/minion'

class HungryCrab < Minion
  def initialize
    @cost = 1
    @attack = 1
    @max_health = 2
    @name = "Hungry Crab"
    super
  end

  def play(player)
    super
	#Destroy a Murloc and gain +2/+2
  end
end
