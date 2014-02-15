require './cards/spell'

class ArcaneMissiles < Spell
  def initialize
    @cost = 1
    @name = 'Arcane Missiles'
    @damage = 1
    super
  end
  def play(player)
    super
    3.times do
      player.random_target(true).deal_damage(@damage + player.spell_damage)
    end
  end
end