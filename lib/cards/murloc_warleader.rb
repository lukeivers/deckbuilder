require './cards/minion'

class MurlocWarleader < Minion
  def initialize
    @name = "Murloc Warleader"
    @cost = 3
    @attack = 3
    @max_health = 3
	  @type = 'Murloc'
    super
  end

  def play(player)
    super
    self.owner.add_murloc_bonus(2, 1)
    self.owner.opponent.add_murloc_bonus(2, 1)
  end

  def die
    self.owner.add_murloc_bonus(-2, -1)
    self.owner.opponent.add_murloc_bonus(-2, -1)
    super
  end

end
