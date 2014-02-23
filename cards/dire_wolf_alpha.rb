require './cards/minion'

class DireWolfAlpha < Minion
  def initialize
    super
    self.cost = 2
    self.attack = 2
    self.max_health = 2
    self.name = "Dire Wolf Alpha"
  end

  def adjacent_bonus
    { attack: 1 }
  end

end
