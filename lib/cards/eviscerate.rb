require './cards/spell'

class Eviscerate < Spell
  def initialize
    @cost = 2
    @name = 'Eviscerate'
    @damage = 2
    @deck_class = 'Rogue'
    super
  end
  def play(player)
    super
	#Deal 2 damage.  Combo: Deal 4 damage instead
    end
  end
