require './cards/minion'

class KingMukla < Minion
  def initialize
    @name = "King Mukla"
    @cost = 3
    @attack = 5
    @max_health = 5
	  @legendary = true
	@type = 'Beast'
    super
  end

  def play(player)
    super
	#Give your opponent 2 Bananas.
	end


end
