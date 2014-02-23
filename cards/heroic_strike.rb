require './cards/spell'

class HeroicStrike < Spell
  def initialize
    self.cost = 2
    self.name = 'Heroic Strike'
    self.deck_class = 'Warrior'
    super
  end
  def battlecry
    super
    owner.add_temporary_attack(4)
	end
end
