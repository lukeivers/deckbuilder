require './cards/minion'

class LeeroyJenkins < Minion
  def initialize
    @name = "Leeroy Jenkins"
    @cost = 4
    @attack = 6
    @max_health = 2
    @charge = true
	#legendary = true
    super
  end

  def play(player)
    super
	#summon 2 1/1 whelps for your opponent
  end


end
