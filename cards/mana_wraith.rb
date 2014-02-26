require './minion'

class ManaWraith < Minion
  def initialize
    super
    self.name = "Mana Wraith"
    self.cost = 2
    self.attack = 2
    self.max_health = 2
  end

  def play(player)
    super
    $game.minion_cost += 1
  end

  def die
    super
    $game.minion_cost -= 1
  end

end
