require './cards/minion'

class SilverbackPatriarch < Minion
  def initialize
    self.taunt = true
    self.cost = 3
    self.attack = 1
    self.max_health = 4
    self.name = "Silverback Patriarch"
	  self.type = 'Beast'
    super
  end

end
