require './cards/minion'

class HungryCrab < Minion
  def initialize
    self.cost = 1
    self.attack = 1
    self.max_health = 2
    self.name = "Hungry Crab"
    super
  end

  def battlecry
    super
    target = self.owner.opponent.minions.select {|minion| minion.type == 'Murloc'}.first
    if target
      target.die
      self.add_attack(2)
      self.add_max_health(2)
    else
      target = self.owner.minions.select {|minion| minion.type == 'Murloc'}.sort{|a, b| a.attack <=> b.attack}
      if target
        target.die
        self.add_attack(2)
        self.add_max_health(2)
      end
    end
  end
end
