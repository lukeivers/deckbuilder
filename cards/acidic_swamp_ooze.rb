require './minion'

class AcidicSwampOoze < Minion
  def initialize
    super
    self.cost = 2
    self.attack = 3
    self.max_health = 2
    self.name = "Acidic Swamp Ooze"
  end

  def battlecry
    super
    owner.opponent.weapon = nil
  end
end