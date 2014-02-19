require './cards/spell'

class HeroicStrike < Spell
  def initialize
    @cost = 2
    @name = 'Heroic Strike'
    @deck_class = 'Warrior'
    super
  end
  def play(player)
    super
	#Give your hero +4 Attack this turn
    end
  end
