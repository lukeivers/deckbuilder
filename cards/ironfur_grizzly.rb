require './cards/minion'

class IronfurGrizzly < Minion
  def initialize
    @taunt = true
    @cost = 3
    @attack = 3
    @max_health = 3
    @name = "Ironfur Grizzly"
	@type = 'Beast'
    super
  end

end
