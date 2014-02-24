require './cards/minion'

class RagingWorgen < Minion
  def initialize
    super
    self.cost = 3
    self.name = 'Raging Worgen'
    self.attack = 3
    self.max_health = 3
  end

  def attack
    result = super
    if self.health < self.max_health
      result + 1
    else
      result
    end
  end

  def windfury
    if health < max_health
      true
    else
      false
    end
  end
end
