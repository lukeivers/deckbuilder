require './cards/minion'

class Lightwarden < Minion
  def initialize
    self.name = "Lightwarden"
    self.cost = 1
    self.attack = 1
    self.max_health = 2
	#Whenever a character is healed, gain +2 attack
    super
  end

  def battlecry
    super

  end

end
