require './cards/minion'

class Lightwarden < Minion
  def initialize
    @name = "Lightwarden"
    @cost = 1
    @attack = 1
    @max_health = 2
	#Whenever a character is healed, gain +2 attack
    super
  end

end
