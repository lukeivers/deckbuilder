require './cards/minion'

class PintSizedSummoner < Minion
  def initialize
    self.cost = 2
    self.attack = 2
    self.max_health = 2
    self.name = "Pint-Sized Summoner"
	#the first minion you play each turn costs (1) less
    super
  end

end
