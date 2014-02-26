require './minion'

class RazorfenHunter < Minion
  def initialize
    super
    self.name = "Razorfen Hunter"
    self.cost = 3
    self.attack = 2
    self.max_health = 3
  end

  def battlecry
    super
    owner.summon Cards.get(name: 'Boar')
  end
end
