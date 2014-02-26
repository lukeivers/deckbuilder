require './minion'

class StormwindChampion < Minion
  def initialize
    super
    self.cost = 7
    self.name = 'Stormwind Champion'
    self.attack = 6
    self.max_health = 6
  end

  def play(player)
    super
    owner.minions.attack_bonus[:all] += 1
    owner.minions.health_bonus[:all] += 1
  end

  def die
    super
    owner.minions.attack_bonus[:all] -= 1
    owner.minions.health_bonus[:all] -= 1
  end

end