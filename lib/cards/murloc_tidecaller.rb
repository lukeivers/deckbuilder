require './cards/minion'

class MurlocTidecaller < Minion
  def initialize
    @name = "Murloc Tidecaller"
    @cost = 1
    @attack = 1
    @max_health = 2
	#type = murloc
	#Whenever a Murloc is summoned, gain +1 attack
    super
  end

end
