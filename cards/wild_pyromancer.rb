require './cards/minion'

class WildPyromancer < Minion
  def initialize
    self.cost = 2
    self.attack = 3
    self.max_health = 2
    self.name = "Wild Pyromancer"
	#After you cast a spell, deal 1 damage to ALL minions
    super
  end

end
