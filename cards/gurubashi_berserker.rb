require './cards/minion'

class GurubashiBerserker < Minion
  def initialize
    self.cost = 5
    self.name = 'Gurubashi Berserker'
    self.attack = 2
    self.max_health = 7
    super
  end
  def deal_damage(damage, source=nil)
    amount = super
    if amount > 0 and not dead?
      self.attack += 3
    end
    amount
  end
end