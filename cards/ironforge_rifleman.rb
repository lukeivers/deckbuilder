require './minion'

class IronforgeRifleman < Minion
  def initialize
    super
    self.name = "Ironforge Rifleman"
    self.cost = 3
    self.attack = 2
    self.max_health = 2
  end

  def battlecry
    super
    owner.cast_damage_spell damage: 1, evades_taunt: true, include_opponent: true
  end
end
