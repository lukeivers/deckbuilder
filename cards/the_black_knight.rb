require './minion'

class TheBlackKnight < Minion
  def initialize
    super
    self.name = "The Black Knight"
    self.cost = 6
    self.attack = 4
    self.max_health = 5
	  self.legendary = true
  end

  def battlecry
    super
    targets = owner.opponent.minions.select {|a| a.taunt}
    if targets.size > 1
      targets.sort{|a, b| a.health <=> b.health}.reverse
    end
    target = targets.first
    if target
      target.owner.destroy_minion(target)
    end
  end
end
