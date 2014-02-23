require './cards/minion'

class StarvingBuzzard < Minion
  def initialize
    self.name = 'Starving Buzzard'
    self.attack = 2
    self.max_health = 1
    self.cost = 2
    self.type = 'Beast'
    super
  end

  def battlecry
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
