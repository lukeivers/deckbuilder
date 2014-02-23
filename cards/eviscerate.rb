require './cards/spell'

class Eviscerate < Spell
  def initialize
    self.cost = 2
    self.name = 'Eviscerate'
    self.damage = 2
    self.deck_class = 'Rogue'
    super
  end
  def battlecry
    super
    if self.owner.cards_played > 0
      self.damage = 4
    end
    self.owner.best_target(self.damage, true).deal_damage(self.damage)
    end
  end
