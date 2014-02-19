require './cards/minion'

class MasterSwordsmith < Minion
  def initialize
    @name = "Master Swordsmith"
    @cost = 2
    @attack = 1
    @max_health = 3
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
