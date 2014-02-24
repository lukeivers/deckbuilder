require './cards/minion'

class VoodooDoctor < Minion
  def initialize
    super
    self.name = "Voodoo Doctor"
    self.cost = 1
    self.attack = 2
    self.max_health = 1
  end

  def battlecry
    super
    owner.heal_target amount: 2
  end
end
