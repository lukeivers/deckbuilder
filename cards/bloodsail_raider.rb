require './cards/minion'

class BloodsailRaider < Minion
  def initialize
    @cost = 2
    @attack = 2
    @max_health = 3
    @name = "Bloodsail Raider"
    super
  end

  def play(player)
	  super
    weapon = owner.weapon
    if weapon
      self.attack += owner.weapon.attack
    end
  end

end
