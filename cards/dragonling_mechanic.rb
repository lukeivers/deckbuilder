require './cards/minion'

class DragonlingMechanic < Minion
  def initialize
    super
    self.name = "Dragonling Mechanic"
    self.cost = 4
    self.attack = 2
    self.max_health = 4
  end

  def battlecry
    super
    owner.summon Cards.get(name: 'Mechanical Dragonling')
  end
end
