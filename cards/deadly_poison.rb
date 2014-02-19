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
    weapon = self.owner.weapon
    if weapon
      weapon.add_attack(2)
    end
	end
  end
