require './spell'

class Soulfire < DamageSpell
  def initialize
    self.cost = 0
    self.name = 'Soulfire'
    self.damage = 4
    self.deck_class = 'Warlock'
    super
  end

  def battlecry
    super
    owner.discard(owner.hand.shuffle.first)
  end
end
