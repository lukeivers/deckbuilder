require './cards/minion'

class AmaniBerserker < Minion
  def initialize
    super
    self.cost = 2
    self.name = 'Amani Berserker'
    self.attack = 2
    self.max_health = 3
  end

  def attack
    result = super
    if health < max_health
      result + 3
    else
      result
    end
  end
end
