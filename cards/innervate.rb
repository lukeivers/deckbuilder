require './cards/spell'

class Innervate < Spell
  def initialize
    @cost = 0
    @name = 'Innervate'
    super
  end

  def play(player)
    super
    self.owner.add_mana(2)
  end
end
