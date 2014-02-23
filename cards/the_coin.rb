require './cards/spell'

class TheCoin < Spell
  def initialize
    super
    self.cost = 0
    self.name = 'The Coin'
  end

  def battlecry
    super
    owner.mana += 1
  end
end