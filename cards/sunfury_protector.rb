require './cards/minion'

class SunfuryProtector < Minion
  def initialize
    self.cost = 2
    self.name = 'Sunfury Protector'
    self.attack = 2
    self.max_health = 3
    super
  end
  def battlecry
    super
	#Give adjacent minions Taunt
  end
end
