require './minion'

class StormwindKnight < Minion
  def initialize
    super
    self.name = "Stormwind Knight"
    self.cost = 4
    self.attack = 2
    self.max_health = 5
    self.charge = true
  end

end
