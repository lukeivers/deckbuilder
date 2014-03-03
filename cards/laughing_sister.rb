require './minion'

class LaughingSister < Minion
  def initialize
    super
    self.cost = 3
    self.attack = 3
    self.max_health = 5
    self.name = "Laughing Sister"
    self.targetable = false
	  #TODO: Can't be targeted by Spells or Hero Powers
  end

end
