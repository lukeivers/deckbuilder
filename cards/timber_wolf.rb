require './cards/minion'

class TimberWolf < Minion
  def initialize
    super
    self.name = 'Timber Wolf'
    self.attack = 1
    self.max_health = 1
    self.cost = 1
    self.type = 'Beast'
    self.deck_class = 'Hunter'
  end

  def play(player)
    super
    owner.minions.attack_bonus[type] += 1
  end

  def die
    super
    owner.minions.attack_bonus[type] -= 1
  end
end
