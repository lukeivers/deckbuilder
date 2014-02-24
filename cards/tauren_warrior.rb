require './cards/minion'

class TaurenWarrior < Minion
  def initialize
    super
    self.cost = 3
    self.name = 'Tauren Warrior'
    self.attack = 2
    self.max_health = 3
  	self.taunt = true
  end

  def attack
    if health < max_health
      @attack + 3
    else
      @attack
    end
  end
end
