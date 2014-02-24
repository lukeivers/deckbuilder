require './cards/spell'

class HeroicStrike < Spell
  def initialize
    super
    self.cost = 2
    self.name = 'Heroic Strike'
    self.deck_class = 'Warrior'
  end

  def battlecry
    super
    owner.temporary_attack += 4
	end
end
