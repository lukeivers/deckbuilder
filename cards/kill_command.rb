require './cards/spell'

class KillCommand < Spell
  def initialize
    @cost = 3
    @name = 'Kill Command'
    @damage = 3
	#Deal 3 damage.  If you have a Beast, deal 5 damage instead
    @deck_class = 'Hunter'
    super
  end
  def play(player)
    damage = @damage + player.spell_damage
    player.best_target(damage, true).deal_damage(damage)
  end
end
