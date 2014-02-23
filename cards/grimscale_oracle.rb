require './cards/minion'

class GrimscaleOracle < Minion
  def initialize
    self.name = "Grimscale Oracle"
    self.cost = 1
    self.attack = 1
    self.max_health = 1
	  self.type = 'Murloc'
	  super
  end

  def battlecry
    super
    self.owner.add_murloc_bonus(1, 0)
    self.owner.opponent.add_murloc_bonus(1, 0)
  end

  def die
    self.owner.add_murloc_bonus(-1, 0)
    self.owner.opponent.add_murloc_bonus(-1, 0)
    super
  end

end
