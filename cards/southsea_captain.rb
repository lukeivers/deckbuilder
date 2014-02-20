require './cards/minion'

class SouthseaCaptain < Minion
  def initialize
    @name = "Southsea Captain"
    @cost = 3
    @attack = 3
    @max_health = 3
	  @type = 'Pirate'
    super
  end

  def play(player)
    super
	#your other Pirates have +1/+1
  end

  def die
    super
  end

end
