require './minion'

class RiverCrocolisk < Minion
  def initialize
    super
    @cost = 2
    @attack = 2
    @max_health = 3
    @name = "River Crocolisk"
  end

  def play(player)
  end
end
