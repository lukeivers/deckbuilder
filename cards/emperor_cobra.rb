require './cards/minion'

class EmperorCobra < Minion
  def initialize
    self.cost = 3
    self.name = 'Emperor Cobra'
    self.attack = 2
    self.max_health = 3
	self.type = 'Beast'
    super
  end
  def attack_target(target)
	#Destroy any minion damaged by this minion.
  end
end
