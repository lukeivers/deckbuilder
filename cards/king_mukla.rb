require './cards/minion'

class KingMukla < Minion
  def initialize
    self.name = "King Mukla"
    self.cost = 3
    self.attack = 5
    self.max_health = 5
	  self.legendary = true
	self.type = 'Beast'
    super
  end

  def battlecry
    super
	#Give your opponent 2 Bananas.
	end


end
