require './minion'

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
    self.auto_hook = [:summon, :death]
  end

  def on_summon(opts = {})
    if opts[:minion].type == 'Murloc' and opts[:minion] != self
      self.attack += 1
    end
  end

  def on_death(opts = {})
    if Minion === opts[:source] and opts[:source].type == 'Murloc'
      self.attack -= 1
    end
  end

end
