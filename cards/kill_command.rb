require './spell'

class KillCommand < Spell
  def initialize
    super
    self.cost = 3
    self.name = 'Kill Command'
    self.damage = 3
    self.deck_class = 'Hunter'
  end

  def battlecry
    super
    if owner.minions.by_type('Beast').size > 0
      self.damage += 2
    end
    owner.cast_damage_spell damage: damage, evades_taunt: true, include_opponent: true
  end
end
