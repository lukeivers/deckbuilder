require './minion'

class FrothingBerserker < Minion
  def initialize
    super
    self.cost = 3
    self.attack = 2
    self.max_health = 4
    self.name = "Frothing Berserker"
  end

  def play(player)
    super
    $game.add_hook :minion_damage, self
  end

  def die
    super
    $game.remove_hook :minion_damage, self
  end

  def on_minion_damage(opts = {})
    self.attack += 1
  end

end
