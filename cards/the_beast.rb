require './minion'

class TheBeast < Minion
  def initialize
    super
    self.name = "The Best"
    self.cost = 6
    self.attack = 9
    self.max_health = 7
	  self.legendary = true
	  self.type = "Beast"
  end

  def deathrattle
    super
    owner.opponent.summon Cards.get name: 'Finkle Einhorn'
  end
end
