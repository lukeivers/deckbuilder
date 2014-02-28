require './minion'

class RepairBot < Minion
  def initialize
    super
    self.name = "Repair Bot"
    self.cost = 1
    self.attack = 0
    self.max_health = 3
  end

  def end_turn
    super
    targets = Array.new.concat(owner.targets).concat(owner.opponent.targets)
    target = targets.select {|a| a.health < a.max_health}.shuffle.first
    if target
      amount = target.max_health - target.health
      amount = 6 if amount > 6
      taret.health += amount
    end
  end
end
