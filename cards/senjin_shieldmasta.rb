require './cards/minion'

class SenjinShieldmasta < Minion
  def initialize
    super
    self.taunt = true
    self.cost = 4
    self.attack = 3
    self.max_health = 5
    self.name = "Sen'jin Shieldmasta"
  end

end
