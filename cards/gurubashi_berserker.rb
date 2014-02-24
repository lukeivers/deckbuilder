require './cards/minion'

class GurubashiBerserker < Minion
  def initialize
    super
    self.cost = 5
    self.name = 'Gurubashi Berserker'
    self.attack = 2
    self.max_health = 7
  end

  def deal_damage(opts = {})
    amount = super
    if amount > 0 and not dead?
      attack += 3
    end
    amount
  end
end