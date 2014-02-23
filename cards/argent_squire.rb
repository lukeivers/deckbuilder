require './cards/minion'

class ArgentSquire < Minion
  def initialize
    self.name = "Argent Squire"
    self.cost = 1
    self.attack = 1
    self.max_health = 1
    self.divine_shield = true
    super
  end

end
