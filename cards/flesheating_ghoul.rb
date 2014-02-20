require './cards/minion'

class FlesheatingGhoul < Minion
  def initialize
    @name = "Flesheating Ghoul"
    @cost = 3
    @attack = 2
    @max_health = 3
	#whenever a minion dies, gain +1 Attack
    super
  end

end
