require './cards/minion'

class ShatteredSunCleric < Minion
  def initialize
    self.cost = 3
    self.name = 'Shattered Sun Cleric'
    self.attack = 3
    self.max_health = 2
    super
  end
  def battlecry
    super
    player.grant_minion_bonus(1, 1)
  end
end