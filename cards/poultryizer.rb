require './minion'

class Poultryizer < Minion
  def initialize
    super
    self.name = "Poultryizer"
    self.cost = 1
    self.attack = 0
    self.max_health = 3
  end

  def start_turn
    target = owner.random_target(include_friendly: true)
    if target
      target.owner.summon Cards.get name: 'Chicken'
      target.owner.destroy_minion(target)
    end
  end
end
