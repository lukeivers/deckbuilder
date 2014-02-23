require './cards/minion'

class WaterElemental < Minion
  def initialize
    self.cost = 4
    self.name = 'Water Elemental'
    self.attack = 3
    self.max_health = 6
    self.deck_class = 'Mage'
    super
  end
  def attack_target(target)
    damage = super(target)
    if damage > 0
      target.freeze
    end
  end
end