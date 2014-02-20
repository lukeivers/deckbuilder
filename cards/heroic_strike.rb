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
    owner.add_temporary_attack(4)
	end
end
