require './cards/minion'

class WaterElemental < Minion
  def initialize
    @cost = 4
    @name = 'Water Elemental'
    @attack = 3
    @max_health = 6
    super
  end
  def attack_target(target)
    damage = super(target)
    if damage > 0
      target.freeze
    end
  end
end