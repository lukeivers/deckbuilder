require './cards/minion'

class ElvenArcher < Minion
  def initialize
    self.name = "Elven Archer"
    self.cost = 1
    self.attack = 1
    self.max_health = 1
    super
  end

  def battlecry
    super
    target = player.best_target(1, true)
    target.deal_damage(1, self)
  end
end