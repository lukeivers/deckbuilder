require './cards/minion'

class GurubashiBerserker < Minion
  def initialize
    @cost = 5
    @name = 'Gurubashi Berserker'
    @attack = 2
    @max_health = 7
    super
  end
  def deal_damage(damage, source=nil)
    amount = super
    if amount > 0 and not dead?
      @attack += 3
    end
    amount
  end
end