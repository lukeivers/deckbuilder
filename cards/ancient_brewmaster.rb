require './minion'

class AncientBrewmaster < Minion
  def initialize
    super
    self.name = "Ancient Brewmaster"
    self.cost = 4
    self.attack = 5
    self.max_health = 4
  end

  def battlecry
    super
    owner.return_minion
  end
end
