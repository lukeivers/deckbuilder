require './cards/spell'

class Backstab < Spell
  def initialize
    @cost = 0
    @name = 'Backstab'
    @damage = 2
    @deck_class = 'Rogue'
    super
  end
  def play(player)
    super
	#Deal 2 damage to an undamaged minion
    end
  end
