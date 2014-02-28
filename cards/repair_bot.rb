require './minion'

class RepairBot < Minion
  def initialize
    super
    self.name = "Repair Bot"
    self.cost = 1
    self.attack = 0
    self.max_health = 3
  end

  def end_turn
    super
	#At the end of your turn, restore 6 Health to a damaged character.
    end
  end

end
