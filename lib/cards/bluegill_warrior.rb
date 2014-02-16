require './cards/minion'

class BluegillWarrior < Minion
  def initialize
    @name = "BluegillWarrior"
    @cost = 2
    @attack = 2
    @max_health = 1
    @charge = true
    super
  end

end
