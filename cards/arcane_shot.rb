require './damage_spell'

class ArcaneShot < DamageSpell
  def initialize
    super
    self.cost = 1
    self.name = 'Arcane Shot'
    self.damage = 2
    self.deck_class = 'Hunter'
  end
end
