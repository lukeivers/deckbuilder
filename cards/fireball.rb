require './cards/spell'

class Fireball < Spell
  def initialize
    self.cost = 4
    self.name = 'Fireball'
    self.damage = 6
    self.deck_class = 'Mage'
    super
  end
  def battlecry
    damage = self.damage + player.spell_damage
    player.best_target(damage, true).deal_damage(damage)
  end
end