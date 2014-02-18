require './cards/spell'

class DeadlyPoison < Spell
  def initialize
    @cost = 1
    @name = 'Deadly Poison'
    @deck_class = 'Rogue'
    super
  end
  def play(player)
    super
	#Give your weapon +2 attack
    end
  end
