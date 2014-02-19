require './cards/minion'

class DefiasRingleader < Minion
  def initialize
    @name = "Defias Ringleader"
    @cost = 2
    @attack = 2
    @max_health = 2
    @deck_class = 'Rogue'
    super
  end

  def play(player)
    super
    if self.owner.cards_played > 0
      self.owner.summon(Cards.get('Defias Bandit').first)
    end
  end
end
