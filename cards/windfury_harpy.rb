require './minion'

class WindfuryHarpy < Minion
  def initialize
    super
    self.cost = 6
    self.attack = 4
    self.max_health = 5
    self.name = "Windfury Harpy"
	  self.windfury = true
  end

end
