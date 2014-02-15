require './cards/minion'

class BluegillWarrior < Minion
  def initialize
    @name = "BluegillWarrior"
    @cost = 2
    @attack = 2
    @max_health = 1
    super
  end

  def play(player)
    super
	#Charge
  end
end
