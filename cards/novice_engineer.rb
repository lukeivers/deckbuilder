require './cards/minion'

class NoviceEngineer < Minion
  def initialize
    @cost = 2
    @attack = 1
    @max_health = 1
    @name = "Novice Engineer"
    super
  end
  def play(player)
    super
    player.draw(1)
  end
end