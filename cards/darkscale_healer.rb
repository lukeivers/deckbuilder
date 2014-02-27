require './minion'

class DarkscaleHealer < Minion
  def initialize
    super
    self.name = "Darkscale Healer"
    self.cost = 5
    self.attack = 4
    self.max_health = 5
  end

  def battlecry
    super
	#Restore 2 Health to all friendly characters
  end
end
