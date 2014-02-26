require './minion'

class MasterSwordsmith < Minion
  def initialize
    super
    self.name = "Master Swordsmith"
    self.cost = 2
    self.attack = 1
    self.max_health = 3
  end

  def end_turn
    super
    target = owner.minions.select {|minion| minion != self}.shuffle.first
    if target
      target.attack += 1
    end
  end

end
