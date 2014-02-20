require './cards/minion'

class ScarletCrusader < Minion
  def initialize
    @name = "Scarlet Crusader"
    @cost = 3
    @attack = 3
    @max_health = 1
    @divine_shield = true
    super
  end

end
