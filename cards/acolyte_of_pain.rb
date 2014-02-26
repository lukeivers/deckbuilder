require './minion'

class AcolyteOfPain < Minion
  def initialize
    super
    self.cost = 3
    self.name = 'Acolyte of Pain'
    self.attack = 1
    self.max_health = 3
  end

  def deal_damage(opts = {})
    if super(opts) > 0
      owner.draw 1
    end
  end
end
