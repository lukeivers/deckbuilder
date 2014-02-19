require './cards/minion'

class GoldshireFootman < Minion
  def initialize
    @taunt = true
    @cost = 1
    @attack = 1
    @max_health = 2
    @name = "Goldshire Footman"
    super
  end

end
