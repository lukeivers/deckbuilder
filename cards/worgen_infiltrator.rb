require './cards/minion'

class WorgenInfiltrator < Minion
  def initialize
    self.name = "Worgen Infiltrator"
    self.cost = 1
    self.attack = 2
    self.max_health = 1
    self.stealth = true
    super
  end

end
