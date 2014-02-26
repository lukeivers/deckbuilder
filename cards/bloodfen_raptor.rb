require './minion'

class BloodfenRaptor < Minion
  def initialize
    super
    self.cost = 2
    self.attack = 3
    self.max_health = 2
    self.name = "Bloodfen Raptor"
  end

end
