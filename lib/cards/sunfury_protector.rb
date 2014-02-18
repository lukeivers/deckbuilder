require './cards/minion'

class SunfuryProtector < Minion
  def initialize
    @cost = 2
    @name = 'Sunfury Protector'
    @attack = 2
    @max_health = 3
    super
  end
  def play(player)
    super
	#Give adjacent minions Taunt
  end
end
