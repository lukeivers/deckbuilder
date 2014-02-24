require './cards/minion'

class JunglePanther < Minion
  def initialize
    super
    self.name = "Jungle Panther"
    self.cost = 3
    self.attack = 4
    self.max_health = 2
    self.stealth = true
  	self.type = 'Beast'
  end

end
