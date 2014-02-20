require './cards/minion'

class Nightblade < Minion
  def initialize
    @name = "Nightblade"
    @cost = 5
    @attack = 4
    @max_health = 4
    super
  end

  def play(player)
    super
    owner.opponent.deal_damage(3)
	end
end
