require './cards/minion'

class PintSizedSummoner < Minion
  def initialize
    @cost = 2
    @attack = 2
    @max_health = 2
    @name = "Pint-Sized Summoner"
	#the first minion you play each turn costs (1) less
    super
  end

end
