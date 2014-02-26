require './minion'

class RaidLeader < Minion
  def initialize
    super
    self.cost = 3
    self.attack = 2
    self.max_health = 2
    self.name = "Raid Leader"
  end

  def play(player)
    super
    minion_group.attack_bonus[:all] += 1
    #TODO: make group bonuses not affect the source
  end

  def die
    super
    minion_group.attack_bonus[:all] += 1
  end

end
