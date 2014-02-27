require './minion'

class StranglethornTiger < Minion
  def initialize
    super
    self.name = "Stranglethorn Tiger"
    self.cost = 5
    self.attack = 5
    self.max_health = 5
    self.stealth = true
  end

end
