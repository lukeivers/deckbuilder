require './cards/minion'

class ElvenArcher < Minion
  def initialize
    @name = "Elven Archer"
    @cost = 1
    @attack = 1
    @max_health = 1
    super
  end

  def play(player)
    super
    target = player.best_target(1, true)
    target.deal_damage(1, self)
  end
end