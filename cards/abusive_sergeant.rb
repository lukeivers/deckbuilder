require './cards/minion'

class AbusiveSergeant < Minion
  def initialize
    super
    self.name = 'Abusive Sergeant'
    self.description = 'Give a minion +2 attack this turn'
    self.cost = 1
    self.attack = 2
    self.max_health = 1
  end

  def battlecry
    super
    owner.add_temporary_attack_to_minion 2
  end
end
