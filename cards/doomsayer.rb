require './cards/minion'

class Doomsayer < Minion
  def initialize
    self.cost = 2
    self.attack = 0
    self.max_health = 7
    self.name = "Doomsayer"
	#At the start of your turn, destroy ALL minions
    super
  end

end
