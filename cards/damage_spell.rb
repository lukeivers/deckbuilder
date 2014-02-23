require './cards/spell'

class DamageSpell < Spell
  def battlecry
    owner.cast_damage_spell damage: damage, evades_taunt: true
  end
end