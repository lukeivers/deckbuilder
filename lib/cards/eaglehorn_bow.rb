require './cards/weapon'

class EaglehornBow < Weapon
  def initialize
    @cost = 3
    @name = 'Eaglehorn Bow'
    @damage = 3
    #@durability = 2
    @deck_class = 'Hunter'
	#Whenever a Secret is played, gain +1 durability
    super
  end
end
