require './cards/minion'

class Doomsayer < Minion
  def initialize
    super
    self.cost = 2
    self.attack = 0
    self.max_health = 7
    self.name = "Doomsayer"
	#At the start of your turn, destroy ALL minions
  end

  def start_turn
    owner.minions.destroy_all
    owner.opponent.minions.destroy_all
  end

end
