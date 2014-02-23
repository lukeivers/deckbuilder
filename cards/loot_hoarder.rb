require './cards/minion'

class LootHoarder < Minion
  def initialize
    self.name = "Loot Hoarder"
    self.cost = 2
    self.attack = 2
    self.max_health = 1
    super
  end

  def die
    super 
    self.owner.draw(1)
  end

end

