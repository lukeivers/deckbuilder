require './cards/minion'

class IronforgeRifleman < Minion
  def initialize
    self.name = "Ironforge Rifleman"
    self.cost = 3
    self.attack = 2
    self.max_health = 2
    super
  end

  def battlecry
    super
    target = player.best_target(1, true)
    target.deal_damage(1, self)
  end
end
