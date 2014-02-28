require './minion'

class Emboldener3000 < Minion
  def initialize
    super
    self.name = "Emboldener 3000"
    self.cost = 1
    self.attack = 0
    self.max_health = 4
  end

  def end_turn
    super
	#At the end of your turn, give a random minion +1/+1
    end
  end

end
