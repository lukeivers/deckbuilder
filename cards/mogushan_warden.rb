require './cards/minion'

class MogushanWarden < Minion
  def initialize
    super
    self.taunt = true
    self.cost = 4
    self.attack = 1
    self.max_health = 7
    self.name = "Mogu'shan Warden"
  end

end
