require './minion'

class FrothingBerserker < Minion
  def initialize
    super
    self.cost = 3
    self.attack = 2
    self.max_health = 4
    self.name = "Frothing Berserker"
    self.auto_hook = :minion_damage
  end

  def on_minion_damage(opts = {})
    self.attack += 1
  end

end
