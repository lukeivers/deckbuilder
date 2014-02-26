require './minion'

class OasisSnapjaw < Minion
  def initialize
    super
    self.name = 'Oasis Snapjaw'
    self.attack = 2
    self.max_health = 7
    self.cost = 4
    self.type = 'Beast'
  end
end
