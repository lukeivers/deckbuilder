require './cards/minion'

class FrothingBerserker < Minion
  def initialize
    @cost = 3
    @attack = 2
    @max_health = 4
    @name = "Frothing Berserker"
    super
  end

  def play(player)
    super
    owner.add_minion_damage_hook(self)
  end

  def on_minion_damage(player, minion, amount, source)
    self.add_attack(1)
  end

end
