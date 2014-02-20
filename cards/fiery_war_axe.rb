require './cards/weapon'

class FieryWarAxe < Weapon
  def initialize
    @cost = 2
    @name = 'Fiery War Axe'
    @attack = 3
    @durability = 2
    @deck_class = 'Warrior'
    super
  end
end
