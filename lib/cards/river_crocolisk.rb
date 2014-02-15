require './cards/minion'

class RiverCrocolisk < Minion
  def initialize
    @cost = 2
    @attack = 2
    @max_health = 3
    @name = "River Crocolisk"
    super
  end

end
