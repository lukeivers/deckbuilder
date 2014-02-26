require './minion'

class ArathiWeaponsmith < Minion
  def initialize
    super
    self.cost = 4
    self.attack = 3
    self.max_health = 3
    self.name = "Arathi Weaponsmith"
    self.deck_class = 'Warrior'
  end

  def battlecry
    super
	  owner.weapon = Weapon.new(attack: 2, durability: 2, owner: owner)
  end

end
