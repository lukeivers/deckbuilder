require './cards/minion'

class SI7Agent < Minion
  def initialize
    @name = "SI:7 Agent"
    @cost = 3
    @attack = 3
    @max_health = 3
    @deck_class = 'Rogue'
    super
  end

  def play(player)
    super
    if self.owner.cards_played > 0
      damage = 2 + self.owner.spell_damage
      self.owner.best_target(damage, true).deal_damage(damage)
    end
	end
end
