require './minion'

class GoldshireFootman < Minion
  def initialize
    super
    self.taunt = true
    self.cost = 1
    self.attack = 1
    self.max_health = 2
    self.name = "Goldshire Footman"
  end

end
