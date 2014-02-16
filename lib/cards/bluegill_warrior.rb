require './cards/minion'

class BluegillWarrior < Minion
  def initialize
    @name = "Bluegill Warrior"
    @cost = 2
    @attack = 2
    @max_health = 1
    @charge = true
    super
  end

end
