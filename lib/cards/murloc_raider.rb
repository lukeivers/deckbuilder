require './minion'

class MurlocRaider < Minion
  def initialize
    super
    @cost = 1
    @attack = 2
    @max_health = 1
    @name = "Murloc Raider"
  end

  def play(player)
  end
end
