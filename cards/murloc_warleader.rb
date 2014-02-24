require './cards/minion'

class MurlocWarleader < Minion
  def initialize
    super
    self.name = "Murloc Warleader"
    self.cost = 3
    self.attack = 3
    self.max_health = 3
	  self.type = 'Murloc'
  end

  def play(player)
    super
    owner.minions.attack_bonus[type] += 2
    owner.opponent.minions.attack_bonus[type] += 2
    owner.minions.health_bonus[type] += 1
    owner.opponent.minions.health_bonus[type] += 1
  end

  def die
    super
    owner.minions.attack_bonus[type] -= 2
    owner.opponent.minions.attack_bonus[type] -= 2
    owner.minions.health_bonus[type] -= 1
    owner.opponent.minions.health_bonus[type] -= 1
  end

end
