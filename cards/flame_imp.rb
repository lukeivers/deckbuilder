require './cards/minion'

class FlameImp < Minion
  def initialize
    super
    self.name = "Flame Imp"
    self.cost = 1
    self.attack = 3
    self.max_health = 2
	  self.type = 'Demon'
    self.deck_class = 'Warlock'
  end

  def battlecry
    super
	  owner.deal_damage damage: 3
  end
end
