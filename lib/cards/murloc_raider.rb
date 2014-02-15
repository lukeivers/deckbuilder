require './cards/minion'

class MurlocRaider < Minion
  def initialize
    @cost = 1
    @attack = 2
    @max_health = 1
    @name = "Murloc Raider"
    super
  end

end
