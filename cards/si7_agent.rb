require './cards/minion'

class SI7Agent < Minion
  def initialize
    self.name = "SI:7 Agent"
    self.cost = 3
    self.attack = 3
    self.max_health = 3
    self.deck_class = 'Rogue'
    super
  end

  def battlecry
    super
    if self.owner.cards_played > 0
      damage = 2 + self.owner.spell_damage
      self.owner.best_target(damage, true).deal_damage(damage)
    end
	end
end
