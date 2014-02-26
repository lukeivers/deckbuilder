require './minion'

class ChillwindYeti < Minion
  def initialize
    super
    self.cost = 4
    self.attack = 4
    self.max_health = 5
    self.name = "Chillwind Yeti"
  end
end
