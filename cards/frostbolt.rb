require './spell'

class Frostbolt < DamageSpell
  def initialize
    super
    self.cost = 2
    self.name = 'Frostbolt'
    self.damage = 3
    self.deck_class = 'Mage'
  end
  def battlecry
    super
    target.freeze
  end
end