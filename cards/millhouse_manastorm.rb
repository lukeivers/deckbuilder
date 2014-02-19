require './cards/minion'

class MillhouseManastorm < Minion
  def initialize
    @cost = 2
    @name = 'Millhouse Manastorm'
    @attack = 4
    @max_health = 4
    @legendary = true
    super
  end

  def play
    super
	#Enemy spells cost (0) next turn
  end


end
