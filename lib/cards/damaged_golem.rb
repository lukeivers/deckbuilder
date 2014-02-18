require './cards/minion'

class DamagedGolem < Minion
  def initialize
    @name = "Damaged Golem"
    @cost = 0
    @attack = 2
    @max_health = 1
    super
  end

end
