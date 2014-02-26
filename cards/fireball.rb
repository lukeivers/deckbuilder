require './damage_spell'

class Fireball < DamageSpell
  def initialize
    super
    self.cost = 4
    self.name = 'Fireball'
    self.damage = 6
    self.deck_class = 'Mage'
  end
end
