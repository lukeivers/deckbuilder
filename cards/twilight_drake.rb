require './minion'

class TwilightDrake < Minion
  def initialize
    super
    self.name = "Twilight Drake"
    self.cost = 4
    self.attack = 4
    self.max_health = 1
    self.type = "Dragon"
  end

  def battlecry
    super
    owner.health += owner.hand.size
  end
end
