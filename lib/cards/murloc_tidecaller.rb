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

  def on_summon(source, friendly=false)
    super
    if source.type == 'Murloc'
      self.add_attack(1)
    end
  end

end
