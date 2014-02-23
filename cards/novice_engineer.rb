require './cards/minion'

class NoviceEngineer < Minion
  def initialize
    self.cost = 2
    self.attack = 1
    self.max_health = 1
    self.name = "Novice Engineer"
    super
  end
  def battlecry
    super
    player.draw(1)
  end
end