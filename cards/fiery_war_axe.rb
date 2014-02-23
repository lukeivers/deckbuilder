require './cards/weapon'

class FieryWarAxe < Weapon
  def initialize
    self.cost = 2
    self.name = 'Fiery War Axe'
    self.attack = 3
    self.durability = 2
    self.deck_class = 'Warrior'
    super
  end
end
