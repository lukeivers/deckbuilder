require './cards/minion'

class IronbeakOwl < Minion
  def initialize
    @name = "Ironbeak Owl"
    @cost = 2
    @attack = 2
    @max_health = 1
    super
  end

  def play(player)
    super
    #Silence a minion
  end
end
