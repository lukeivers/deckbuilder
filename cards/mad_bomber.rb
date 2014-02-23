require './cards/minion'

class MadBomber < Minion
  def initialize
    self.name = "Mad Bomber"
    self.cost = 2
    self.attack = 3
    self.max_health = 2
    super
  end

  def battlecry
    super
	#Deal 3 damage randomly split between all other characters
  end
end
