require './cards/minion'

class MindControlTech < Minion
  def initialize
    @name = "Mind Control Tech"
    @cost = 3
    @attack = 3
    @max_health = 3
    super
  end

  def play(player)
    super
	#If your opponent has 4 or more minions, take control of one at random.
  end
end
