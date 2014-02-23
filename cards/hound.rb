require './cards/minion'

class Hound < Minion
  def initialize
    self.name = 'Hound'
    self.attack = 1
    self.max_health = 1
    self.cost = 0
	self.charge = true
          self.type = 'Beast'
    super
  end
end
