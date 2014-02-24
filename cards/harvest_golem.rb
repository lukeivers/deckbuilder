require './cards/minion'

class HarvestGolem < Minion
  def initialize
    super
    self.cost = 3
    self.name = 'Harvest Golem'
    self.attack = 2
    self.max_health = 3
  end

  def deathrattle
    super
    owner.summon Cards.get(name: 'Damaged Golem')
  end


end
