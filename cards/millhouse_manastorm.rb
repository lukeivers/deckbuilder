require './cards/minion'

class MillhouseManastorm < Minion
  def initialize
    self.cost = 2
    self.name = 'Millhouse Manastorm'
    self.attack = 4
    self.max_health = 4
    self.legendary = true
    super
  end

  def play
    super
	#Enemy spells cost (0) next turn
  end


end
