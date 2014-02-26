require './spell'

class ArcaneIntellect < Spell
  def initialize
    super
    self.cost = 3
    self.name = 'Arcane Intellect'
    self.deck_class = 'Mage'
  end

  def battlecry
    owner.draw 2
  end
end