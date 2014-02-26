require './minion'

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
    result = super
    if health < max_health
      result + 3
    else
      result
    end
  end
end
