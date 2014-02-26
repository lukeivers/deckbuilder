require './minion'

class SilverbackPatriarch < Minion
  def initialize
    super
    self.taunt = true
    self.cost = 3
    self.attack = 1
    self.max_health = 4
    self.name = "Silverback Patriarch"
	  self.type = 'Beast'
  end

end
