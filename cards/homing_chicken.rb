require './minion'

class HomingChicken < Minion
  def initialize
    super
    self.name = "Homing Chicken"
    self.cost = 1
    self.attack = 0
    self.max_health = 1
  end

	#At the start of your turn, destroy this minion and draw 3 cards

end
