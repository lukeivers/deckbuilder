require './cards/minion'

class LootHoarder < Minion
  def initialize
    @name = "Loot Hoarder"
    @cost = 2
    @attack = 2
    @max_health = 1
    super
  end

  def die
    super 
    self.owner.draw(1)
  end

end

