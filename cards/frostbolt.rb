require './cards/spell'

class Frostbolt < Spell
  def initialize
    self.cost = 2
    self.name = 'Frostbolt'
    self.damage = 3
    self.deck_class = 'Mage'
    super
  end
  def battlecry
    super
    damage = self.damage + player.spell_damage
    target = player.best_target(damage, true)
    target.deal_damage(damage)
    target.freeze
  end
end