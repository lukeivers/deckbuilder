require './cards/minion'

class FrostwolfGrunt < Minion
  def initialize
    @taunt = true
    @cost = 2
    @attack = 2
    @max_health = 2
    @name = "Frostwolf Grunt"
    super
  end

end
