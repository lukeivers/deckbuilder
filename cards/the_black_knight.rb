require './minion'

class TheBlackKnight < Minion
  def initialize
    super
    self.name = "The Black Knight"
    self.cost = 6
    self.attack = 4
    self.max_health = 5
	  self.legendary = true
  end

	#Battlecry: Destroy an enemy minion with Taunt

end
