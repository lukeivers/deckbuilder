require './cards/minion'

class StormwindChampion < Minion
  def initialize
    @cost = 7
    @name = 'Stormwind Champion'
    @attack = 6
    @max_health = 6
    super
  end
  def play(player)
    player.add_global_bonus(1, 1)
    super
  end
  def die
    self.owner.add_global_bonus(-1, -1)
    super
  end
end