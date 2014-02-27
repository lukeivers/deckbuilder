require './minion'

class FenCreeper < Minion
  def initialize
    super
    self.taunt = true
    self.cost = 5
    self.attack = 3
    self.max_health = 6
    self.name = "Fen Creeper"
  end

end
