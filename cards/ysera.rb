require './minion'

class Ysera < Minion
  def initialize
    super
    self.name = "Ysera"
    self.cost = 9
    self.attack = 4
    self.max_health = 12
	  self.legendary = true
	self.type = "Dragon"
	#At the end of your turn, draw a Dream Card
	# Dream
	# Emerald Drake
	# Laughing Sister
	# Nightmare
	# Ysera Awakens
  end
end
