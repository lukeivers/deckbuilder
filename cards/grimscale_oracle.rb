require './minion'

class GrimscaleOracle < Minion
  def initialize
    super
    self.name = "Grimscale Oracle"
    self.cost = 1
    self.attack = 1
    self.max_health = 1
	  self.type = 'Murloc'
  end

  def play(player)
    super
    owner.minions.attack_bonus[type] += 1
    owner.opponent.minions.attack_bonus[type] += 1
  end

  def die
    super
    owner.minions.attack_bonus[type] -= 1
    owner.opponent.minions.attack_bonus[type] -= 1
  end

end
