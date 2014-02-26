require './minion'

class SouthseaCaptain < Minion
  def initialize
    super
    self.name = "Southsea Captain"
    self.cost = 3
    self.attack = 3
    self.max_health = 3
	  self.type = 'Pirate'
  end

  def play(player)
    super
    owner.minions.attack_bonus[type] += 1
    owner.minions.health_bonus[type] += 1
  end

  def die
    super
    owner.minions.attack_bonus[type] -= 1
    owner.minions.health_bonus[type] -= 1
  end

end
