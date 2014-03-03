require './spell'

class Nightmare < Spell
  def initialize
    super
    self.cost = 0
    self.name = 'Nightmare'
  end

	#Give a minion +5/+5.  At the start of your next turn, destroy it.

end
