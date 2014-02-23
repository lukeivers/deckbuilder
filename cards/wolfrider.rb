require './cards/minion'

class Wolfrider < Minion
  def initialize
    self.name = "Wolfrider"
    self.cost = 3
    self.attack = 3
    self.max_health = 1
    self.charge = true
    super
  end

end
