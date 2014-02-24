require './cards/minion'

class IronfurGrizzly < Minion
  def initialize
    super
    self.taunt = true
    self.cost = 3
    self.attack = 3
    self.max_health = 3
    self.name = "Ironfur Grizzly"
  	self.type = 'Beast'
  end

end
