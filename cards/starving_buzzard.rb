require './cards/minion'

class StarvingBuzzard < Minion
  def initialize
    @name = 'Starving Buzzard'
    @attack = 2
    @max_health = 1
    @cost = 2
    @type = 'Beast'
    super
  end

  def play(player)
    super
    owner.add_summon_hook(self)
  end

  def die
    owner.remove_summon_hook(self)
    super
  end

  def on_summon(player, minion)
    if minion.type == 'Beast'
      player.draw(1)
    end
  end
end
