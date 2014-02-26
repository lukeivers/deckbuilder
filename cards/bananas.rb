require './spell'

class Bananas < Spell
  def initialize
    super
    self.cost = 1
    self.name = 'Bananas'
  end

  def battlecry
    super
    owner.grant_minion_bonus attack: 1, health: 1
  end
end
