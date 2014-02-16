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

  def on_summon(source, friendly=false)
    super
    if friendly and self.owner.opponent.minions.size > 0
      self.owner.opponent.minions.shuffle.first.deal_damage(1)
    end
  end

end
