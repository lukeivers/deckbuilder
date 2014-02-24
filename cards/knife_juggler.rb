require './cards/minion'

class KnifeJuggler < Minion
  def initialize
    super
    self.name = "Knife Juggler"
    self.cost = 2
    self.attack = 3
    self.max_health = 2
	  #After you summon a minion, deal 1 damage to a random enemy
  end

  def battlecry
    super
    $game.add_hook :summon, self
  end

  def on_summon(opts = {})
    if opts[:minion] != self and opts[:minion].owner == self.owner and owner.opponent.minions.size > 0
      target = owner.random_target(include_opponent: true)
      Logger.log 'Knife Juggler\'s special dealt 1 damage to ' + target.name
      target.deal_damage damage: 1
    end
  end

end
