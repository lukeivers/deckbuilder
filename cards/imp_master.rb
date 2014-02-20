require './cards/minion'

class ImpMaster < Minion
  def initialize
    @cost = 3
    @attack = 1
    @max_health = 5
    @name = "Imp Master"
	#At the end of your turn, deal 1 damage to this minion and summon a 1/1 Imp.
    super
  end

end
