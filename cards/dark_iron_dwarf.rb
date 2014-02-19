require './cards/minion'

class DarkIronDwarf < Minion
  def initialize
    @cost = 4
    @name = 'Dark Iron Dwarf'
    @attack = 4
    @max_health = 4
    super
  end
  def play(player)
    super
    self.owner.grant_minion_bonus(2, 0)
  end
end
