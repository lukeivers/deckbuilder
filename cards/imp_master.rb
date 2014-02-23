require './cards/minion'

class ImpMaster < Minion
  def initialize
    self.cost = 3
    self.attack = 1
    self.max_health = 5
    self.name = "Imp Master"
	#At the end of your turn, deal 1 damage to this minion and summon a 1/1 Imp.
    super
  end

end
