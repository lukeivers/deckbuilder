require './cards/minion'

class BloodsailRaider < Minion
  def initialize
    @cost = 2
    @attack = 2
    @max_health = 3
    @name = "BloodSail Raider"
    super
  end

  def play
	#gain attack equal to the attack of your weapon
    super
  end

end
