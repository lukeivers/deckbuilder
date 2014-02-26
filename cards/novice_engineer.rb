require './minion'

class NoviceEngineer < Minion
  def initialize
    super
    self.cost = 2
    self.attack = 1
    self.max_health = 1
    self.name = "Novice Engineer"
  end

  def battlecry
    super
    owner.draw 1
  end
end