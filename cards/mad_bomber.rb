require './cards/minion'

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
    3.times { owner.random_target(include_friendly: true, include_opponent: true, include_self: true).
              select {|a| a != self}.deal_damage(damage: 1) }
  end
end
