require './minion'

class InjuredBlademaster < Minion
  def initialize
    super
    self.name = "Injured Blademaster"
    self.cost = 3
    self.attack = 4
    self.max_health = 7
  end

  def battlecry
    super
    deal_damage damage: 3
  end
end
