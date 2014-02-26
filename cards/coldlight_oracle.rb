require './minion'

class ColdlightOracle < Minion
  def initialize
    super
    self.name = "Coldlight Oracle"
    self.cost = 3
    self.attack = 2
    self.max_health = 2
	  self.type = 'Murloc'
  end

  def battlecry
    super
    owner.draw 2
    owner.opponent.draw 2
  end

end
