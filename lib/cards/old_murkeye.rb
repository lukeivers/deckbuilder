require './cards/minion'

class OldMurkeye < Minion
  def initialize
    @name = "Old Murk-Eye"
    @cost = 4
    @attack = 2
    @max_health = 4
    @charge = true
	#type = murloc
	#legendary = true
	#Has +1 Attack for each other Murloc on the battlefield
    super
  end

end
