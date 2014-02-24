require './cards/minion'

class RiverCrocolisk < Minion
  def initialize
    super
    self.cost = 2
    self.attack = 2
    self.max_health = 3
    self.name = "River Crocolisk"
  end

end
