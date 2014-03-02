require './minion'

class HungryCrab < Minion
  def initialize
    super
    self.cost = 1
    self.attack = 1
    self.max_health = 2
    self.name = "Hungry Crab"
  end

  def battlecry
    super
    target = owner.opponent.minions.by_type('Murloc').sort{|a, b| a.attack <=> b.attack}.reverse.first
    if target
      target.die
      self.attack += 2
      self.max_health += 2
    else
      target = owner.minions.by_type('Murloc').sort{|a, b| a.attack <=> b.attack}.first
      if target
        target.die
        self.attack += 2
        self.max_health += 2
      end
    end
  end
end
