require './cards/minion'

class MindControlTech < Minion
  def initialize
    super
    self.name = "Mind Control Tech"
    self.cost = 3
    self.attack = 3
    self.max_health = 3
  end

  def battlecry
    super
    if owner.opponent.minions.size >= 4
      target = owner.opponent.random_target
      owner.opponent.destroy_minion target
      owner.add_minion target
    end
  end
end
