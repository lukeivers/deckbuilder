require './cards/minion'

class FrothingBerserker < Minion
  def initialize
    self.cost = 3
    self.attack = 2
    self.max_health = 4
    self.name = "Frothing Berserker"
    super
  end

  def battlecry
    super
    owner.add_minion_damage_hook(self)
  end

  def on_minion_damage(player, minion, amount, source)
    self.add_attack(1)
  end

end
