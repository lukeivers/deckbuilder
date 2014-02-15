require './cards/spell'

class Polymorph < Spell
  def initialize
    @cost = 4
    @name = 'Polymorph'
    super
  end
  def play(player)
    target = player.best_smurfing_target
    return if target == nil
    super
    target.attack = 1
    target.max_health = 1
    target.health = 1
    target.name = 'Sheep'
  end
end