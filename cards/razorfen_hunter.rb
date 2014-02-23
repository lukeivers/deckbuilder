require './cards/minion'

class RazorfenHunter < Minion
  def initialize
    self.name = "Razorfen Hunter"
    self.cost = 3
    self.attack = 2
    self.max_health = 3
    super
  end

  def battlecry
    super
    self.owner.summon(Cards.get('Boar').first)
  end
end
