require './cards/minion'

class RaidLeader < Minion
  def initialize
    @cost = 3
    @attack = 2
    @max_health = 2
    @name = "Raid Leader"
	#Your other minions have +1 Attack
    super
  end

end
