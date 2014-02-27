require './minion'

class BigGameHunter < Minion
  def initialize
    super
    self.cost = 3
    self.name = 'Big Game Hunter'
    self.attack = 4
    self.max_health = 2
  end

  def battlecry
    super
	#Destroy a minion with an Attack of 7 or more
  end
end
