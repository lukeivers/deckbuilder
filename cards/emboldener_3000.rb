require './minion'

class Emboldener3000 < Minion
  def initialize
    super
    self.name = "Emboldener 3000"
    self.cost = 1
    self.attack = 0
    self.max_health = 4
  end

  def end_turn
    super
    target = owner.random_target(include_friendly: true)
    if target
      target.attack += 1
      target.max_health += 1
    end
  end

end
