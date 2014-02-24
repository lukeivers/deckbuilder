require './cards/minion'

class WaterElemental < Minion
  def initialize
    super
    self.cost = 4
    self.name = 'Water Elemental'
    self.attack = 3
    self.max_health = 6
    self.deck_class = 'Mage'
  end

  def attack_target(opts = {})
    damage = super(opts)
    if damage > 0
      opts[:target].freeze
    end
  end
end