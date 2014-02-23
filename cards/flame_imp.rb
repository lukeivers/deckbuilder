require './cards/minion'

class FlameImp < Minion
  def initialize
    self.name = "Flame Imp"
    self.cost = 1
    self.attack = 3
    self.max_health = 2
	  self.type = 'Demon'
    self.deck_class = 'Warlock'

    super
  end

  def battlecry
    super
	  self.owner.deal_damage(3)
  end
end
