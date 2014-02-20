require './cards/minion'

class ColdlightOracle < Minion
  def initialize
    @name = "Coldlight Oracle"
    @cost = 3
    @attack = 2
    @max_health = 2
	  @type = 'Murloc'
    super
  end

  def play(player)
    super
	#Each player draws 2 cards.
  end

end
