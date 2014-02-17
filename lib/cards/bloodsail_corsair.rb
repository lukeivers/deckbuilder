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
    weapon = self.owner.opponent.weapon
    if weapon
      weapon.add_durability(-1)
    end
	end
end
