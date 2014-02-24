require './cards/minion'

class DefiasRingleader < Minion
  def initialize
    super
    self.name = "Defias Ringleader"
    self.cost = 2
    self.attack = 2
    self.max_health = 2
    self.deck_class = 'Rogue'
  end

  def battlecry
    super
    if owner.cards_played > 0
      owner.summon Cards.get(name: 'Defias Bandit')
    end
  end
end
