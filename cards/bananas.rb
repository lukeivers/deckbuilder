require './cards/spell'

class Bananas < Spell
  def initialize
    @cost = 1
    @name = 'Bananas'
    super
  end
  def play(player)
	#Give a minion +1/+1.
  end
end
