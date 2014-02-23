require './cards/minion'

class JunglePanther < Minion
  def initialize
    self.name = "Jungle Panther"
    self.cost = 3
    self.attack = 4
    self.max_health = 2
    self.stealth = true
	self.type = 'Beast'
    super
  end

end
