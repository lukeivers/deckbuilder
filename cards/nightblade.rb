require './cards/minion'

class Nightblade < Minion
  def initialize
    super
    self.name = "Nightblade"
    self.cost = 5
    self.attack = 4
    self.max_health = 4
  end

  def battlecry
    super
    owner.opponent.deal_damage damage: 3
	end
end
