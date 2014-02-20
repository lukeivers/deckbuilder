require './cards/minion'

class AlarmOBot < Minion
  def initialize
    @cost = 3
    @name = 'Alarm-o-Bot'
    @attack = 0
    @max_health = 3
	#At the start of your turn, swap this minion with a random one in your hand.
    super
  end

end
