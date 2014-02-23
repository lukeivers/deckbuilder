require './cards/minion'

class FaerieDragon < Minion
  def initialize
    self.cost = 2
    self.attack = 3
    self.max_health = 2
    self.name = "Faerie Dragon"
	  #TODO: Can't be targeted by Spells or Hero Powers
    super
  end

end
