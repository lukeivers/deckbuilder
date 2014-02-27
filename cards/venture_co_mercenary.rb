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

end
