require './cards/minion'

class BloodImp < Minion
  def initialize
    @name = "Blood Imp"
    @cost = 1
    @attack = 0
    @max_health = 1
    @stealth = true
	#type = demon
    @deck_class = 'Warlock'
    super
  end
	#At the end of your turn, give another random friendly minion +1 health

end
