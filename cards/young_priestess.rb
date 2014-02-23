require './cards/minion'

class YoungPriestess < Minion
  def initialize
    self.name = "Young Priestess"
    self.cost = 1
    self.attack = 2
    self.max_health = 1
	  super
  end

  def end_turn
    super
    target = self.owner.minions.select {|minion| minion != self}.shuffle.first
    if target
      target.add_max_health(1)
    end
  end

end
