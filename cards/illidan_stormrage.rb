require './minion'

class IllidanStormrage < Minion
  def initialize
    super
    self.name = "Illidan Stormrage"
    self.cost = 6
    self.attack = 7
    self.max_health = 5
	  self.legendary = true
  end

	#Whenever you play a card, summon a 2/1 Flame of Azzinoth

end
