require './cards/minion'

class AbusiveSergeant < Minion
  def initialize
    @name = "Abusive Sergeant"
    @cost = 1
    @attack = 2
    @max_health = 1
    super
  end

  def play(player)
    super
    target = self.owner.choose_bonus_minion(2, 0)
    if target
      target.add_temporary_attack(2)
    end

    #Give a minion +2 attack this turn
  end
end
