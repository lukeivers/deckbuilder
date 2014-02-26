require './minion'

class Demolisher < Minion
  def initialize
    super
    self.name = "Demolisher"
    self.cost = 3
    self.attack = 1
    self.max_health = 4
  end

  def start_turn
    owner.opponent.targets.shuffle.first.deal_damage damage: 2
  end

end
