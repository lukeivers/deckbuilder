require './cards/minion'

class MindControlTech < Minion
  def initialize
    self.name = "Mind Control Tech"
    self.cost = 3
    self.attack = 3
    self.max_health = 3
    super
  end

  def battlecry
    super
	#If your opponent has 4 or more minions, take control of one at random.
  end
end
