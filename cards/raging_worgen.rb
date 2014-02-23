require './cards/minion'

class RagingWorgen < Minion
  def initialize
    self.cost = 3
    self.name = 'Raging Worgen'
    self.attack = 3
    self.max_health = 3
    super
  end

  def attack
    if self.health < self.max_health
      self.attack + 1
	#windfury = true
    else
      self.attack
    end
  end
end
