require './minion'

class MadBomber < Minion
  def initialize
    super
    self.name = "Mad Bomber"
    self.cost = 2
    self.attack = 3
    self.max_health = 2
  end

  def battlecry
    super
    3.times do
      target = owner.random_target(include_friendly: true, include_opponent: true, include_self: true)
      while target == self
        target = owner.random_target(include_friendly: true, include_opponent: true, include_self: true)
      end
      deal_damage(damage: 1)
    end
  end
end
