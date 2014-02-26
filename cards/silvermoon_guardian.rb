require './cards/minion'

class SilvermoonGuardian < Minion
  def initialize
    super
    self.name = "Silvermoon Guardian"
    self.cost = 4
    self.attack = 3
    self.max_health = 3
    self.divine_shield = true
  end

end
