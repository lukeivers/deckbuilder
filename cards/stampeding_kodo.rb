require './minion'

class StampedingKodo < Minion
  def initialize
    super
    self.name = "Stampeding Kodo"
    self.cost = 5
    self.attack = 3
    self.max_health = 5
	self.type = "Beast"
  end

  def battlecry
    super
    target = owner.opponent.minions.select {|a| a.attack <= 2}.shuffle.first
    if target
      target.destruct
      target.owner.destroy_minion(target)
    end
	end
end
