require './cards/minion'

class Secretkeeper < Minion
  def initialize
    self.name = "Secretkeeper"
    self.cost = 1
    self.attack = 1
    self.max_health = 2
	#Whenever a secret is played, gain +1/+1
    super
  end

end
