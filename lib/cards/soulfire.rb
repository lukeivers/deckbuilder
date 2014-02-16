require './cards/spell'

class Soulfire < Spell
  def initialize
    @cost = 0
    @name = 'Soulfire'
    @damage = 4
    @deck_class = 'Warlock'
    super
  end
  def play(player)
    super
    self.owner.best_target(self.damage, true).deal_damage(self.damage)
    self.owner.discard(self.owner.hand.shuffle.first)
    #discard a random card
  end
end
