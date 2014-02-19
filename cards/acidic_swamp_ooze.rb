require './cards/minion'

class AcidicSwampOoze < Minion
  def initialize
    @cost = 2
    @attack = 3
    @max_health = 2
    @name = "Acidic Swamp Ooze"
    super
  end

  def play(player)
    super
    player.opponent.set_weapon(nil)
  end
end