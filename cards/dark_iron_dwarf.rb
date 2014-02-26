require './minion'

class DarkIronDwarf < Minion
  def initialize
    super
    self.cost = 4
    self.name = 'Dark Iron Dwarf'
    self.attack = 4
    self.max_health = 4
  end
  def battlecry
    super
    owner.grant_minion_bonus attack: 2
  end
end
