require './cards/minion'

class ColdlightSeer < Minion
  def initialize
    super
    self.name = "Coldlight Seer"
    self.cost = 3
    self.attack = 2
    self.max_health = 3
	  self.type = 'Murloc'
  end

  def battlecry
    super
    owner.minions.select {|minion| minion != self}.concat(self.owner.opponent.minions).
        select {|minion| minion.type == 'Murloc'}.each {|minion| minion.max_health += 2}
  end

end
