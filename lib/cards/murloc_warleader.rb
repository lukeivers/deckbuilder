require './cards/minion'

class MurlocWarleader < Minion
  def initialize
    @name = "Murloc Warleader"
    @cost = 3
    @attack = 3
    @max_health = 3
	#type = murloc
	#ALL other Murlocs have +2/+1
    super
  end

end
