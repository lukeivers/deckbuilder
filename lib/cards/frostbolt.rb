require './spell'

class Frostbolt < Spell
  def initialize
    @cost = 2
    @name = 'Frostbolt'
  end
  def play(player)
    super
    target = player.best_target(3, true)
    target.deal_damage(3)
    target.freeze
  end
end