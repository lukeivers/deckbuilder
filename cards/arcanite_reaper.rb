require './cards/weapon'

class ArcaniteReaper < Weapon
  def initialize
    @cost = 5
    @name = 'Arcanite Reaper'
    @damage = 5
    @durability = 2
    @deck_class = 'Warrior'
    super
  end
end
