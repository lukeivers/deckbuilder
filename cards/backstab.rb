require './spell'

class Backstab < DamageSpell
  def initialize
    self.cost = 0
    self.name = 'Backstab'
    self.damage = 2
    self.deck_class = 'Rogue'
    super
  end
end
