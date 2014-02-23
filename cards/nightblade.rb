require './cards/minion'

class Nightblade < Minion
  def initialize
    self.name = "Nightblade"
    self.cost = 5
    self.attack = 4
    self.max_health = 4
    super
  end

  def battlecry
    super
    owner.opponent.deal_damage(3)
	end
end
