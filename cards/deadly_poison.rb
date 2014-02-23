require './cards/spell'

class DeadlyPoison < Spell
  def initialize
    super
    self.cost = 1
    self.name = 'Deadly Poison'
    self.deck_class = 'Rogue'
  end

  def battlecry
    super
    weapon = owner.weapon
    if weapon
      weapon.attack += 2
    end
	end
end
