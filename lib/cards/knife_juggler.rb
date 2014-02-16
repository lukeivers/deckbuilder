require './cards/minion'

class KnifeJuggler < Minion
  def initialize
    @name = "Knife Juggler"
    @cost = 2
    @attack = 3
    @max_health = 2
	#After you summon a minion, deal 1 damage to a random enemy
    super
  end

end
