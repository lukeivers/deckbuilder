require './cards/minion'

class DefenderOfArgus < Minion
  def initialize
    @cost = 4
    @name = 'Defender of Argus'
    @attack = 2
    @max_health = 3
    super
  end
  def play(player)
    super
	#Give adjacent minions +1/+1 and Taunt
  end
end
