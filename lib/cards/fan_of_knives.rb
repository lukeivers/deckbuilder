require './cards/spell'

class FanOfKnives < Spell
  def initialize
    @cost = 3
    @name = 'Fan of Knives'
    @damage = 1
    @deck_class = 'Rogue'
    super
  end
  def play(player)
    super
	#Deal 1 damage to all enemy minions.  Draw a card
    end
  end
