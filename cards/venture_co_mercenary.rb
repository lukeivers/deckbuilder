require './minion'

class VentureCoMercenary < Minion
  def initialize
    super
    self.name = "Venture Co. Mercenary"
    self.cost = 5
    self.attack = 7
    self.max_health = 6
	#Your minions cost (3) more
  end

  def play(player)
    super
    owner.minion_cost += 3
  end

  def die
    super
    owner.minion_cost -= 3
  end

end
