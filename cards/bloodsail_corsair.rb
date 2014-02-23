require './cards/minion'

class BloodsailCorsair < Minion
  def initialize
    super
    self.cost = 1
    self.attack = 1
    self.max_health = 2
    self.name = "Bloodsail Corsair"
  end

  def battlecry
    super
    weapon = owner.opponent.weapon
    if weapon
      weapon.durability -= 1
    end
	end
end
