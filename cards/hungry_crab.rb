require './cards/minion'

class HungryCrab < Minion
  def initialize
    @cost = 1
    @attack = 1
    @max_health = 2
    @name = "Hungry Crab"
    super
  end

  def play(player)
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
