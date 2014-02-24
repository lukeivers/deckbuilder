require './cards/minion'

class SunfuryProtector < Minion
  def initialize
    super
    self.cost = 2
    self.name = 'Sunfury Protector'
    self.attack = 2
    self.max_health = 3
  end

  def battlecry
    super
    owner.grant_adjacent_bonus taunt: true
  end
end
