require './minion'

class StonetuskBoar < Minion
  def initialize
    super
    self.name = "Stonetusk Boar"
    self.cost = 1
    self.attack = 1
    self.max_health = 1
    self.charge = true
  end

end
