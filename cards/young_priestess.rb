require './cards/minion'

class YoungPriestess < Minion
  def initialize
    super
    self.name = "Young Priestess"
    self.cost = 1
    self.attack = 2
    self.max_health = 1
  end

  def end_turn
    super
    target = owner.random_target
    if target
      target.max_health += 1
    end
  end

end
