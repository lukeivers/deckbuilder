require './cards/minion'

class YoungPriestess < Minion
  def initialize
    @name = "Young Priestess"
    @cost = 1
    @attack = 2
    @max_health = 1
	#At the end of your turn, give another random friendly minion +1 Health
    super
  end

end
