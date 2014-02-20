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

  def play(player)
    super
    owner.add_summon_hook(self)
  end

  def on_summon(player, minion)
    if minion != self and self.owner.opponent.minions.size > 0
      target = self.owner.opponent.minions.shuffle.first
      Logger.log 'Knife Juggler\'s special dealt 1 damage to ' + target.name
      target.deal_damage(1)
    end
  end

end
