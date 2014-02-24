require './cards/minion'

class LootHoarder < Minion
  def initialize
    super
    self.name = "Loot Hoarder"
    self.cost = 2
    self.attack = 2
    self.max_health = 1
  end

  def deathrattle
    super 
    owner.draw 1
  end

end

