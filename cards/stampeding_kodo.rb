require './minion'

class StampedingKodo < Minion
  def initialize
    super
    self.name = "Stampeding Kodo"
    self.cost = 5
    self.attack = 3
    self.max_health = 5
	self.type = "Beast"
  end

  def battlecry
    super
	#Destroy a random enemy minion with 2 or less Attack
  end
end
