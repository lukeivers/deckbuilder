require './minion'

class AncientMage < Minion
  def initialize
    super
    self.cost = 4
    self.name = 'Ancient Mage'
    self.attack = 2
    self.max_health = 5
  end

  def battlecry
    super
    owner.grant_adjacent_bonus spell_damage: 1
	end

end
