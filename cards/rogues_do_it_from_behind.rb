require './damage_spell'

class RoguesDoItFromBehind < DamageSpell
  def initialize
    self.cost = 4
    self.name = 'Rogues Do It From Behind'
    self.damage = 4
    super
  end

  def battlecry
    super
    owner.draw 1
  end
end
