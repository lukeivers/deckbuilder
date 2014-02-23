require './cards/minion'

class MagmaRager < Minion
  def initialize
    self.name = "Magma Rager"
    self.cost = 3
    self.attack = 5
    self.max_health = 1
    super
  end

end
