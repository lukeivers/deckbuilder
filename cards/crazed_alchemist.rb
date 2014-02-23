require './cards/minion'

class CrazedAlchemist < Minion
  def initialize
    super
    self.name = "Crazed Alchemist"
    self.cost = 2
    self.attack = 2
    self.max_health = 2
  end

  def battlecry
    super
    owner.swap_minion_stats
  end
end
