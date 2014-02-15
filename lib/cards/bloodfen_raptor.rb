require './cards/minion'

class BloodfenRaptor < Minion
  def initialize
    @cost = 2
    @attack = 3
    @max_health = 2
    @name = "Bloodfen Raptor"
    super
  end

end
