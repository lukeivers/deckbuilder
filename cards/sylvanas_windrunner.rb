require './minion'

class SylvanasWindrunner < Minion
  def initialize
    super
    self.name = "Sylvanas Windrunner"
    self.cost = 6
    self.attack = 5
    self.max_health = 5
	  self.legendary = true
  end

	#Deathrattle: Take control of a random enemy minion

end
