require './cards/minion'

class MasterSwordsmith < Minion
  def initialize
    self.name = "Master Swordsmith"
    self.cost = 2
    self.attack = 1
    self.max_health = 3
	  super
  end

  def end_turn
    super
    target = self.owner.minions.select {|minion| minion != self}.shuffle.first
    if target
      target.add_attack(1)
    end
  end

end
