require './cards/minion'

class BloodKnight < Minion
  def initialize
    @cost = 3
    @attack = 3
    @max_health = 3
    @name = "Blood Knight"
    super
  end

  def play(player)
    super
	#All minions lose Divine Shield.  Gain +3/+3 for each Shield lost
  end
end
