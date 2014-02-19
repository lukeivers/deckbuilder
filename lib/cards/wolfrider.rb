require './cards/minion'

class Wolfrider < Minion
  def initialize
    @name = "Wolfrider"
    @cost = 3
    @attack = 3
    @max_health = 1
    @charge = true
    super
  end

end
