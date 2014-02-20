require './cards/minion'

class OldMurkeye < Minion
  def initialize
    @name = "Old Murk-Eye"
    @cost = 4
    @attack = 2
    @max_health = 4
    @charge = true
	  @type = 'Murloc'
	  @legendary = true
    super
  end

  def play(player)
    super
    owner.add_summon_hook(self)
    owner.add_death_hook(self)
  end

  def on_summon(player, minion)
    if minion.type == 'Murloc'
      self.add_attack(1)
    end
  end

  def on_death(player, minion)
    if minion.type == 'Murloc'
      self.add_attack(-1)
    end
  end

end
