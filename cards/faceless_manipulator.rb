require './minion'

class FacelessManipulator < Minion
  def initialize
    super
    self.name = "Faceless Manipulator"
    self.cost = 5
    self.attack = 3
    self.max_health = 3
  end

  def battlecry
    super
	#Choose a minion and become a copy of it
	end
end
