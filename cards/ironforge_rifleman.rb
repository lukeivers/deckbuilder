require './cards/minion'

class IronforgeRifleman < Minion
  def initialize
    @name = "Ironforge Rifleman"
    @cost = 3
    @attack = 2
    @max_health = 2
    super
  end

  def play(player)
    super
    target = player.best_target(1, true)
    target.deal_damage(1, self)
  end
end
