require './cards/minion'

class StormwindChampion < Minion
  def initialize
    @cost = 7
    @name = 'Stormwind Champion'
    @attack = 6
    @max_health = 6
    super
  end
  def play(player)
    player.add_global_attack_bonus 1
    player.add_global_health_bonus 1
    player.minions.each do |minion|
      minion.add_attack 1
      minion.add_max_health 1
    end
    super
  end
  def die
    super
    @owner.add_global_attack_bonus -1
    @owner.add_global_health_bonus -1
    @owner.minions.each do |minion|
      minion.add_attack -1
      minion.add_max_health -1
    end
  end
end