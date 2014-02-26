require './minion'

class SI7Agent < Minion
  def initialize
    super
    self.name = "SI:7 Agent"
    self.cost = 3
    self.attack = 3
    self.max_health = 3
    self.deck_class = 'Rogue'
  end

  def battlecry
    super
    if owner.cards_played > 0
      damage = 2 + owner.spell_damage
      owner.cast_damage_spell(damage: damage, evades_taunt: true)
    end
	end
end
