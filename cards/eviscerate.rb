require './cards/spell'

class Eviscerate < Spell
  def initialize
    @cost = 2
    @name = 'Eviscerate'
    @damage = 2
    @deck_class = 'Rogue'
    super
  end
  def play(player)
    super
    if self.owner.cards_played > 0
      @damage = 4
    end
    self.owner.best_target(self.damage, true).deal_damage(self.damage)
    end
  end
