require './spell'

class ArcaneMissiles < Spell
  def initialize
    super
    self.cost = 1
    self.name = 'Arcane Missiles'
    self.damage = 1
    self.deck_class = 'Mage'
  end

  def battlecry
    3.times do
      owner.random_target(evades_taunt: true, include_opponent: true).deal_damage damage: damage
    end
  end
end