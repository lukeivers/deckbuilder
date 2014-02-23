require './cards/minion'

class ManaWraith < Minion
  def initialize
    self.name = "Mana Wraith"
    self.cost = 2
    self.attack = 2
    self.max_health = 2
	  super
	#ALL minions cost (1) more
  end

end
