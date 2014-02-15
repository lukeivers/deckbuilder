require './cards/minion'

class StonetuskBoar < Minion
  def initialize
    @name = "Stonetusk Boar"
    @cost = 1
    @attack = 1
    @max_health = 1
    super
  end

  def play(player)
    super
	#Charge
  end
end
