require './cards/spell'

class Eviscerate < DamageSpell
  def initialize
    super
    self.cost = 2
    self.name = 'Eviscerate'
    self.damage = 2
    self.deck_class = 'Rogue'
  end

  def battlecry
    if owner.cards_played > 0
      self.damage = 4
    end
    super
  end
end
