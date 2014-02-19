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
    if source != self and friendly and self.owner.opponent.minions.size > 0
      target = self.owner.opponent.minions.shuffle.first
      Logger.log 'Knife Juggler\'s special dealt 1 damage to ' + target.name
      target.deal_damage(1)
    end
  end

end
