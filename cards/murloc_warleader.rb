require './cards/minion'

class MurlocWarleader < Minion
  def initialize
    self.name = "Murloc Warleader"
    self.cost = 3
    self.attack = 3
    self.max_health = 3
	  self.type = 'Murloc'
    super
  end

  def battlecry
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
