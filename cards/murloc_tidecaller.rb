require './minion'

class MurlocTidecaller < Minion
  def initialize
    super
    self.name = "Murloc Tidecaller"
    self.cost = 1
    self.attack = 1
    self.max_health = 2
	  self.type = 'Murloc'
    self.auto_hook = :summon
  end

  def on_summon(opts = {})
    if opts[:minion].type == 'Murloc' and opts[:minion] != self
      self.attack += 1
      Logger.log 'Murloc Tidecaller summon buff activated.'
    end
  end

end
