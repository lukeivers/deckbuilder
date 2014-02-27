require './minion'

class BootyBayBodyguard < Minion
  def initialize
    super
    self.cost = 5
    self.name = 'Booty Bay Bodyguard'
    self.attack = 5
    self.max_health = 4
	self.taunt = true
  end
end
