require './cards/minion'

class SouthseaCaptain < Minion
  def initialize
    self.name = "Southsea Captain"
    self.cost = 3
    self.attack = 3
    self.max_health = 3
	  self.type = 'Pirate'
    super
  end

  def battlecry
    super
	#your other Pirates have +1/+1
  end

  def die
    super
  end

end
