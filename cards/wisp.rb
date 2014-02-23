require './cards/minion'

class Wisp < Minion
  def initialize
    self.cost = 0
    self.attack = 1
    self.max_health = 1
    self.name = "Wisp"
    super
  end

end
