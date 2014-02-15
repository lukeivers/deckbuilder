require './spell'

class ArcaneMissiles < Spell
  def initialize
    @cost = 1
    @name = 'Arcane Missiles'
  end
  def play(player)
    super
    3.times do
      player.random_target(true).deal_damage(1)
    end
  end
end