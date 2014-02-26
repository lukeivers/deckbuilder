require './minion'

class Devilsaur < Minion
  def initialize
    super
    self.name = 'Devilsaur'
    self.attack = 5
    self.max_health = 5
    self.cost = 5
    self.type = 'Beast'
  end
end
