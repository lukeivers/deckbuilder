require './minion'

class BaineBloodhoof < Minion
  def initialize
    super
    self.cost = 4
    self.name = 'Baine Bloodhoof'
    self.attack = 4
    self.max_health = 5
  end

end

