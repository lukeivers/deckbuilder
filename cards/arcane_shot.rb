require './cards/spell'

class ArcaneShot < Spell
  def initialize
    @cost = 1
    @name = 'Arcane Shot'
    @damage = 2
    @deck_class = 'Hunter'
    super
  end
  def play(player)
    player.best_target(self.damage, true).deal_damage(self.damage)
  end
end
