require './cards/minion'

class ShatteredSunCleric < Minion
  def initialize
    @cost = 3
    @name = 'Shattered Sun Cleric'
    @attack = 3
    @max_health = 2
    super
  end
  def play(player)
    super
    player.grant_minion_bonus(1, 1)
  end
end