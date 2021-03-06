require './minion'

class TinkmasterOverspark < Minion
  def initialize
    super
    self.name = "Tinkmaster Overspark"
    self.cost = 3
    self.attack = 2
    self.max_health = 2
	  self.legendary = true
  end

  def battlecry
    super
    target = Array.new.concat(owner.minions).concat(owner.opponent.minions).shuffle.first
    if target
      if rand(2) == 1
        target.attack = 1
        target.set_health 1
        target.set_max_health 1
        target.name = 'Squirrel'
        target.type = 'Beast'
      else
        target.attack = 5
        target.set_health 5
        target.set_max_health 5
        target.name = 'Devilsaur'
        target.type = 'Beast'
      end
    end
	end


end
