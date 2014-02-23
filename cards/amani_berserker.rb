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
    if health < max_health
      attack + 3
    else
      attack
    end
  end
end
