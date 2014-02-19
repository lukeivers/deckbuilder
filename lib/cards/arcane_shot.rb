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
    damage = @damage + player.spell_damage
    player.best_target(damage, true).deal_damage(damage)
  end
end
