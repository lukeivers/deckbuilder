require './cards/minion'

class ShatteredSunCleric < Minion
  def initialize
    super
    self.cost = 3
    self.name = 'Shattered Sun Cleric'
    self.attack = 3
    self.max_health = 2
  end

  def battlecry
    super
    owner.grant_minion_bonus attack: 1, health: 1
  end
end