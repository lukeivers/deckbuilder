require './cards/spell'

class Innervate < Spell
  def initialize
    self.cost = 0
    self.name = 'Innervate'
    super
  end

  def battlecry
    super
    self.owner.add_mana(2)
  end
end
