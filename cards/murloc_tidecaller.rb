require './cards/minion'

class MurlocTidecaller < Minion
  def initialize
    @name = "Murloc Tidecaller"
    @cost = 1
    @attack = 1
    @max_health = 2
	  @type = 'Murloc'
	  super
  end

  def play(player)
    super
    owner.add_summon_hook(self)
    owner.opponent.add_summon_hook(self)
  end

  def on_summon(player, minion)
    if minion.type == 'Murloc'
      self.add_attack(1)
    end
  end

end
