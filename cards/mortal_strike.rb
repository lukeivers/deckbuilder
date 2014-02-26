require './damage_spell'

class MortalStrike < DamageSpell
  def initialize
    super
    self.cost = 4
    self.name = 'Mortal Strike'
    self.damage = 4
    self.deck_class = 'Warrior'
  end

  def battlecry
    if owner.health <= 12
      self.damage = 6
    end
    super
  end
end
