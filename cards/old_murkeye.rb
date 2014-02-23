require './cards/minion'

class OldMurkeye < Minion
  def initialize
    self.name = "Old Murk-Eye"
    self.cost = 4
    self.attack = 2
    self.max_health = 4
    self.charge = true
	  self.type = 'Murloc'
	  self.legendary = true
    super
  end

  def battlecry
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
