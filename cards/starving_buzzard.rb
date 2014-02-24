require './cards/minion'

class StarvingBuzzard < Minion
  def initialize
    super
    self.name = 'Starving Buzzard'
    self.attack = 2
    self.max_health = 1
    self.cost = 2
    self.type = 'Beast'
  end

  def play(player)
    super
    $game.add_hook :summon, self
  end

  def die
    super
    $game.remove_hook :summon, self
  end

  def on_summon(opts = {})
    if opts[:minion].type == 'Beast'
      owner.draw 1
    end
  end
end
