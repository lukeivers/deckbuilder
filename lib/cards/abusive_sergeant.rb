require './cards/minion'

class AbusiveSergeant < Minion
  def initialize
    @name = "AbusiveSergeant"
    @cost = 1
    @attack = 2
    @max_health = 1
    super
  end

  def play(player)
    super
    #Give a minion +2 attack this turn
  end
end
