require './cards/minion'

class ChillwindYeti < Minion
  def initialize
    @cost = 4
    @attack = 4
    @max_health = 5
    @name = "Chillwind Yeti"
    super
  end

end
