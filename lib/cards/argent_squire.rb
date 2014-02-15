require './cards/minion'

class ArgentSquire < Minion
  def initialize
    @name = "Argent Squire"
    @cost = 1
    @attack = 1
    @max_health = 1
    super
  end

  def play(player)
    super
	#Divine Shield
  end
end
