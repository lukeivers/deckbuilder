require './cards/minion'

class SI7Agent < Minion
  def initialize
    @name = "SI:7 Agent"
    @cost = 3
    @attack = 3
    @max_health = 3
    @deck_class = 'Rogue'
    super
  end

  def play(player)
    super
	#Combo: Deal 2 damage
  end
end
