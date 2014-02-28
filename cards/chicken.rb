require './minion'

class Chicken < Minion
  def initialize
    super
    self.name = 'Chicken'
    self.attack = 1
    self.max_health = 1
    self.cost = 0
	self.type = "Beast"
  end
end
