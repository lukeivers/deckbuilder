require './spell'

class DamageSpell < Spell
  def battlecry
    owner.cast_damage_spell damage: damage, evades_taunt: true, include_opponent: true
  end
end