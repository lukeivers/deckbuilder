require './cards/spell'

class Frostbolt < Spell
  def initialize
    @cost = 2
    @name = 'Frostbolt'
    @damage = 3
    @deck_class = 'Mage'
    super
  end
  def play(player)
    super
    damage = @damage + player.spell_damage
    target = player.best_target(damage, true)
    target.deal_damage(damage)
    target.freeze
  end
end