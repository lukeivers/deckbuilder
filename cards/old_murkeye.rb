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

  def on_summon(source, friendly=false)
    super
    if source.type == 'Murloc'
      self.add_attack(1)
    end
  end

  def on_death(source, friendly=false)
    super
    if source.type == 'Murloc'
      self.add_attack(-1)
    end
  end

end
