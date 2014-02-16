require './cards/minion'

class GrimscaleOracle < Minion
  def initialize
    @name = "Grimscale Oracle"
    @cost = 1
    @attack = 1
    @max_health = 1
	  @type = 'Murloc'
	  super
  end

  def play(player)
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
