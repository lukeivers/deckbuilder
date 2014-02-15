require './minion'

class NoviceEngineer < Minion
  def initialize
    super
    @cost = 2
    @attack = 1
    @health = 1
    @name = "Novice Engineer"
  end
  def play(player)
    super
    player.draw(1)
  end
end