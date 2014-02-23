require './cards/minion'

class RiverCrocolisk < Minion
  def initialize
    self.cost = 2
    self.attack = 2
    self.max_health = 3
    self.name = "River Crocolisk"
    super
  end

end
