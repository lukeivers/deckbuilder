require './cards/minion'

class ImpMaster < Minion
  def initialize
    super
    self.cost = 3
    self.attack = 1
    self.max_health = 5
    self.name = "Imp Master"
  end

  def end_turn
    super
    deal_damage damage: 1
    owner.summon Cards.get(name: 'Imp')
  end

end
