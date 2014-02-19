require './cards/minion'

class FrothingBerserker < Minion
  def initialize
    @cost = 3
    @attack = 2
    @max_health = 4
    @name = "Frothing Berserker"
	#Whenever a minion takes damage, gain +1 attack
    super
  end

end
