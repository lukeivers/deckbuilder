require './cards/spell'

class Innervate < Spell
  def initialize
    super
    self.cost = 0
    self.name = 'Innervate'
  end

  def battlecry
    super
    owner.mana += 2
  end
end
