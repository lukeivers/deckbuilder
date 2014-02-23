require './cards/minion'

class FlesheatingGhoul < Minion
  def initialize
    self.name = "Flesheating Ghoul"
    self.cost = 3
    self.attack = 2
    self.max_health = 3
	#whenever a minion dies, gain +1 Attack
    super
  end

end
