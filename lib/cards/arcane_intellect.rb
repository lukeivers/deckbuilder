require './cards/spell'

class ArcaneIntellect < Spell
  def initialize
    @cost = 3
    @name = 'Arcane Intellect'
    super
  end
  def play(player)
    super
    player.draw(2)
  end
end