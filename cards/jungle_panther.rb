require './cards/minion'

class JunglePanther < Minion
  def initialize
    @name = "Jungle Panther"
    @cost = 3
    @attack = 4
    @max_health = 2
    @stealth = true
	@type = 'Beast'
    super
  end

end
