require './cards/minion'

class BigGameHunter < Minion
  def initialize
    super
    self.cost = 3
    self.attack = 4
    self.max_health = 2
    self.name = "Big Game Hunter"
  end

  def battlecry
    super
    target = owner.opponent.minions.select {|a| a.attack >= 7}.sort {|a, b| a.attack <=> b.attack}.reverse.first
    if target
      target.die
    end
  end
end
