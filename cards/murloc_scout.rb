require './minion'

class MurlocScout < Minion
  def initialize
    super
    self.name = 'Murloc Scout'
    self.attack = 1
    self.max_health = 1
    self.cost = 0
    self.type = 'Murloc'
  end
end
