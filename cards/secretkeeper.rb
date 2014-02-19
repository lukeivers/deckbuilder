require './cards/minion'

class Secretkeeper < Minion
  def initialize
    @name = "Secretkeeper"
    @cost = 1
    @attack = 1
    @max_health = 2
	#Whenever a secret is played, gain +1/+1
    super
  end

end
