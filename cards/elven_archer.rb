require './minion'

class ElvenArcher < Minion
  def initialize
    super
    self.name = "Elven Archer"
    self.cost = 1
    self.attack = 1
    self.max_health = 1
  end

  def battlecry
    super
    owner.cast_damage_spell damage: 1, evades_taunt: true, include_opponent: true, source: self
  end
end