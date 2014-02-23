require './cards/minion'

class RaidLeader < Minion
  def initialize
    self.cost = 3
    self.attack = 2
    self.max_health = 2
    self.name = "Raid Leader"
	#Your other minions have +1 Attack
    super
  end

end
