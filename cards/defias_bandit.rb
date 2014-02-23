require './cards/minion'

class DefiasBandit < Minion
  def initialize
    super
    self.name = "Defias Bandit"
    self.cost = 0
    self.attack = 2
    self.max_health = 1
    self.deck_class = 'Rogue'
  end

end
