require './minion'

class FrostwolfGrunt < Minion
  def initialize
    super
    self.taunt = true
    self.cost = 2
    self.attack = 2
    self.max_health = 2
    self.name = "Frostwolf Grunt"
  end

end
