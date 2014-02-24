require './cards/minion'

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
    minion = Array.new.concat(owner.minions).concat(owner.opponent.minions).shuffle.first
    if minion
      if rand(2) == 1
        target.attack = 1
        target.set_health 1
        target.set_max_health = 1
        target.name = 'Squirrel'
        target.type = 'Beast'
      else
        target.attack = 5
        target.set_health 5
        target.set_max_health = 5
        target.name = 'Devilsaur'
        target.type = 'Beast'
        #TODO: is a devilsaur a beast?
      end
    end
	end


end
