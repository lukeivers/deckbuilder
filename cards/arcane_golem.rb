require './cards/minion'

class ArcaneGolem < Minion
  def initialize
    @name = "Arcane Golem"
    @cost = 3
    @attack = 4
    @max_health = 2
    @charge = true
    super
  end

  def play(player)
    super
    owner.opponent.add_mana_crystal(1)
  end

end
