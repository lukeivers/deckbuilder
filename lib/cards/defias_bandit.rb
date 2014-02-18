require './cards/minion'

class DefiasBandit < Minion
  def initialize
    @name = "Defias Bandit"
    @cost = 0
    @attack = 2
    @max_health = 1
    @deck_class = 'Rogue'
    super
  end

end
