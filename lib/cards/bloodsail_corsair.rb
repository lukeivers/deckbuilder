require './cards/minion'

class BloodsailCorsair < Minion
  def initialize
    @cost = 1
    @attack = 1
    @max_health = 2
    @name = "Bloodsail Corsair"
    super
  end

  def play(player)
    super
	#Remove 1 Durability from your opponent's weapon
  end
end
