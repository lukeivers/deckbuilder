require './cards/minion'

class Wisp < Minion
  def initialize
    @cost = 0
    @attack = 1
    @max_health = 1
    @name = "Wisp"
    super
  end

end
