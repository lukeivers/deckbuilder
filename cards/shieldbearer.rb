require './cards/minion'

class Shieldbearer < Minion
  def initialize
    @taunt = true
    @cost = 1
    @attack = 0
    @max_health = 4
    @name = "Shieldbearer"
    super
  end

end
