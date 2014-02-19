require './cards/minion'

class DireWolfAlpha < Minion
  def initialize
    @cost = 2
    @attack = 2
    @max_health = 2
    @name = "Dire Wolf Alpha"
	#Adjacent minions have +1 attack
    super
  end

end
