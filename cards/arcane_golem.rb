require './cards/minion'

class ArcaneGolem < Minion
  def initialize
    super
    self.name = "Arcane Golem"
    self.cost = 3
    self.attack = 4
    self.max_health = 2
    self.charge = true
  end

  def battlecry
    super
    owner.opponent.max_mana += 1
  end

end
