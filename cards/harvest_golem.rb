require './cards/minion'

class HarvestGolem < Minion
  def initialize
    self.cost = 3
    self.name = 'Harvest Golem'
    self.attack = 2
    self.max_health = 3
    super
  end

  def die
    self.owner.summon(Cards.get('Damaged Golem').first)
    super
  end


end
