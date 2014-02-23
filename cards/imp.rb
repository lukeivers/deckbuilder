require './cards/minion'

class Imp < Minion
  def initialize
    self.cost = 1
    self.attack = 1
    self.max_health = 1
    self.name = "Imp"
	  self.type = 'Demon'
    super
  end

end
