require './cards/minion'

class StormwindChampion < Minion
  def initialize
    self.cost = 7
    self.name = 'Stormwind Champion'
    self.attack = 6
    self.max_health = 6
    super
  end
  def battlecry
    player.add_global_bonus(1, 1)
    super
  end
  def die
    self.owner.add_global_bonus(-1, -1)
    super
  end
end