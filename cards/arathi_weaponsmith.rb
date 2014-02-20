require './cards/minion'

class ArathiWeaponsmith < Minion
  def initialize
    @cost = 4
    @attack = 3
    @max_health = 3
    @name = "Arathi Weaponsmith"
    @deck_class = 'Warrior'
    super
  end

  def play(player)
	  super
    owner.set_weapon(Weapon.new(attack: 2, durability: 2))
	  #Equip a 2/2 weapon
  end

end
