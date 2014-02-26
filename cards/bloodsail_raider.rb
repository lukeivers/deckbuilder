require './minion'

class BloodsailRaider < Minion
  def initialize
    super
    self.cost = 2
    self.attack = 2
    self.max_health = 3
    self.name = "Bloodsail Raider"
  end

  def battlecry
	  super
    weapon = owner.weapon
    if weapon
      self.attack += weapon.attack
    end
  end

end
