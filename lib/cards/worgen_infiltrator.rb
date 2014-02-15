require './cards/minion'

class WorgenInfiltrator < Minion
  def initialize
    @name = "Worgen Infiltrator"
    @cost = 1
    @attack = 2
    @max_health = 1
    super
  end

  def play(player)
    super
	#Stealth
  end
end
