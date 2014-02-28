require './minion'

class Poultryizer < Minion
  def initialize
    super
    self.name = "Poultryizer"
    self.cost = 1
    self.attack = 0
    self.max_health = 3
  end

	#At the start of your turn, transform a random minion into a 1/1 Chicken

end
