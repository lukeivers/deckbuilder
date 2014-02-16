require './cards/minion'

class Voidwalker < Minion
  def initialize
    @taunt = true
    @cost = 1
    @attack = 1
    @max_health = 3
    @name = "Voidwalker"
	#type = demon
    @deck_class = 'Warlock'
    super
  end

end
