require './minion'

class EmperorCobra < Minion
  def initialize
    super
    self.cost = 3
    self.name = 'Emperor Cobra'
    self.attack = 2
    self.max_health = 3
	  self.type = 'Beast'
  end

  def attack_target(opts = {})
	  result = super(opts)
    if result > 0
      opts[:target].die
    end
  end
end
