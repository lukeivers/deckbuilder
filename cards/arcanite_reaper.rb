require './cards/weapon'

class ArcaniteReaper < Weapon
  def initialize
    super
    self.cost = 5
    self.name = 'Arcanite Reaper'
    self.attack = 5
    self.durability = 2
    self.deck_class = 'Warrior'
  end
end
