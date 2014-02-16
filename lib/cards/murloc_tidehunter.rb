require './cards/minion'

class MurlocTidehunter < Minion
  def initialize
    @name = "Murloc Tidehunter"
    @cost = 2
    @attack = 2
    @max_health = 1
	#type=murloc
    super
  end

  def play(player)
    super
	#Summon a 1/1 Murloc Scout
  end
end
