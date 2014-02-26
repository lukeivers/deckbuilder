require './minion'

class DefenderOfArgus < Minion
  def initialize
    super
    self.cost = 4
    self.name = 'Defender of Argus'
    self.attack = 2
    self.max_health = 3
  end
  def battlecry
    super
    owner.grant_adjacent_bonus attack: 1, health: 1, taunt: true, source: self
	end

end
