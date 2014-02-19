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
	#Equip a 2/2 weapon
  end

end
