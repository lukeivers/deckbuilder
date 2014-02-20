require './cards/minion'

class RazorfenHunter < Minion
  def initialize
    @name = "Razorfen Hunter"
    @cost = 3
    @attack = 2
    @max_health = 3
    super
  end

  def play(player)
    super
    self.owner.summon(Cards.get('Boar').first)
  end
end
