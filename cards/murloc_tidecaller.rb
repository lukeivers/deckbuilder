require './cards/minion'

class MurlocTidecaller < Minion
  def initialize
    super
    self.name = "Murloc Tidecaller"
    self.cost = 1
    self.attack = 1
    self.max_health = 2
	  self.type = 'Murloc'
  end

  def battlecry
    super
    $game.add_hook :summon, self
  end

  def on_summon(opts = {})
    if opts[:minion].type == 'Murloc'
      attack += 1
    end
  end

end
