require './minion'

class FinkleEinhorn < Minion
  def initialize
    super
    self.cost = 2
    self.attack = 3
    self.max_health = 3
    self.name = "Finkle Einhorn"
  end

end
