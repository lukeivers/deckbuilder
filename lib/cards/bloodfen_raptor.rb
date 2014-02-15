require './minion'

class BloodfenRaptor < Minion
  def initialize
    super
    @cost = 2
    @attack = 3
    @max_health = 2
    @name = "Bloodfen Raptor"
  end

  def play(player)
  end
end
