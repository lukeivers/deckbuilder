require './minion'

class Imp < Minion
  def initialize
    super
    self.cost = 1
    self.attack = 1
    self.max_health = 1
    self.name = "Imp"
	  self.type = 'Demon'
  end
end
