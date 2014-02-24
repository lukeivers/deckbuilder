require './cards/minion'

class FlesheatingGhoul < Minion
  def initialize
    super
    self.name = "Flesheating Ghoul"
    self.cost = 3
    self.attack = 2
    self.max_health = 3
  end

  def battlecry
    super
    $game.add_hook :death, self
  end

  def on_death(opts = {})
    if opts[:source].minion?
      self.attack += 1
    end
  end
end
