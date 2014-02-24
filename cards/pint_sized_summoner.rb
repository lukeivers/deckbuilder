require './cards/minion'

class PintSizedSummoner < Minion
  def initialize
    super
    self.cost = 2
    self.attack = 2
    self.max_health = 2
    self.name = "Pint-Sized Summoner"
  end

  def play(player)
    super
    owner.minion_cost -= 1
  end

  def die
    super
    owner.minion_cost += 1
  end

end
