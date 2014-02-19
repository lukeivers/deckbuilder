require './cards/spell'

class MortalStrike < Spell
  def initialize
    @cost = 4
    @name = 'Mortal Strike'
    @deck_class = 'Warrior'
    super
  end
  def play(player)
    super
	#Deal 4 damage.  If your Hero has 12 or less health, deal 6 damage instead
    end
  end
