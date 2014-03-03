require './minion'

class BaronGeddon < Minion
  def initialize
    super
    self.name = "Baron Geddon"
    self.cost = 7
    self.attack = 7
    self.max_health = 5
	  self.legendary = true
	#At the end of your turn, deal 2 damage to ALL other characters
  end
end
