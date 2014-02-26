require './minion'

class ArgentCommander < Minion
  def initialize
    super
    self.name = "Argent Commander"
    self.cost = 6
    self.attack = 4
    self.max_health = 2
    self.divine_shield = true
    self.charge = true
  end

end
