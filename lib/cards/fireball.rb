require './cards/spell'

class Fireball < Spell
  def initialize
    @cost = 4
    @name = 'Fireball'
    @damage = 6
    super
  end
  def play(player)
    damage = @damage + player.spell_damage
    player.best_target(damage, true).deal_damage(damage)
  end
end