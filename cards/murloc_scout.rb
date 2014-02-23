require './cards/minion'

class MurlocScout < Minion
  def initialize
    self.name = 'Murloc Scout'
    self.attack = 1
    self.max_health = 1
    self.cost = 0
          self.type = 'Murloc'
    super
  end
end
