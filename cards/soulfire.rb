require './cards/spell'

class Soulfire < Spell
  def initialize
    self.cost = 0
    self.name = 'Soulfire'
    self.damage = 4
    self.deck_class = 'Warlock'
    super
  end
  def battlecry
    super
    self.owner.best_target(self.damage, true).deal_damage(self.damage)
    self.owner.discard(self.owner.hand.shuffle.first)
    #discard a random card
  end
end
