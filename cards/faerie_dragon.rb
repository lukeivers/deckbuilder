require './minion'

class FaerieDragon < Minion
  def initialize
    super
    self.cost = 2
    self.attack = 3
    self.max_health = 2
    self.name = "Faerie Dragon"
    self.targetable = false
	  #TODO: Can't be targeted by Spells or Hero Powers
  end

end
