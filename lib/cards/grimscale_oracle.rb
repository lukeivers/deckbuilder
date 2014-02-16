require './cards/minion'

class GrimscaleOracle < Minion
  def initialize
    @name = "Grimscale Oracle"
    @cost = 1
    @attack = 1
    @max_health = 1
	#type = murloc
	#ALL other Murlocs have +1 attack
    super
  end

end
