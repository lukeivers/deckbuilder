require './minion'

class Hound < Minion
  def initialize
    super
    self.name = 'Hound'
    self.attack = 1
    self.max_health = 1
    self.cost = 0
  	self.charge = true
    self.type = 'Beast'
  end
end
