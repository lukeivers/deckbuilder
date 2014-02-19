require './cards/minion'

class ArgentSquire < Minion
  def initialize
    @name = "Argent Squire"
    @cost = 1
    @attack = 1
    @max_health = 1
    @divine_shield = true
    super
  end

end
