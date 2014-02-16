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
    damage = @damage + player.spell_damage
    player.best_target(damage, true).deal_damage(damage)
    #discard a random card
  end
end
