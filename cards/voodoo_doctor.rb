require './cards/minion'

class VoodooDoctor < Minion
  def initialize
    self.name = "Voodoo Doctor"
    self.cost = 1
    self.attack = 2
    self.max_health = 1
    super
  end

  def battlecry
    super
	#Restore 2 health
  end
end
