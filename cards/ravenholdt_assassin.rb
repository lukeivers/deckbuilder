require './minion'

class RavenholdtAssassin < Minion
  def initialize
    super
    self.name = "Ravenholdt Assassin"
    self.cost = 7
    self.attack = 7
    self.max_health = 5
    self.stealth = true
  end

end
