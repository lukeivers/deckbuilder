require './cards/minion'

class TaurenWarrior < Minion
  def initialize
    self.cost = 3
    self.name = 'Tauren Warrior'
    self.attack = 2
    self.max_health = 3
	self.taunt = true
    super
  end

  def attack
    if self.health < self.max_health
      self.attack + 3
    else
      self.attack
    end
  end
end
