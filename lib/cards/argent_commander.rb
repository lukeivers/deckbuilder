require './cards/minion'

class ArgentCommander < Minion
  def initialize
    @name = "Argent Commander"
    @cost = 6
    @attack = 4
    @max_health = 2
    @divine_shield = true
    @charge = true
    super
  end

end
