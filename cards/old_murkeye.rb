require './cards/minion'

class OldMurkeye < Minion
  def initialize
    super
    self.name = "Old Murk-Eye"
    self.cost = 4
    self.attack = 2
    self.max_health = 4
    self.charge = true
	  self.type = 'Murloc'
	  self.legendary = true
  end

  def battlecry
    super
    $game.add_hook :summon, self
    $game.add_hook :death, self
  end

  def on_summon(opts = {})
    if opts[:minion].type == 'Murloc'
      attack += 1
    end
  end

  def on_death(opts = {})
    if Minion === opts[:source] and opts[:source].type == 'Murloc'
      attack -= 1
    end
  end

end
