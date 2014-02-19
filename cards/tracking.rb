require './cards/spell'

class Tracking < Spell
  def initialize
    @cost = 1
    @name = 'Tracking'
    @deck_class = 'Hunter'
    super
  end
  def play(player)
    super
	#Look at the top 3 cards of your deck.  Draw one and discard the others.
  end
end
