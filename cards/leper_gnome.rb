require './cards/minion'

class LeperGnome < Minion
  def initialize
    self.name = "Leper Gnome"
    self.cost = 1
    self.attack = 2
    self.max_health = 1
    super
  end

  def die
    super
    self.owner.opponent.deal_damage(2)
	end

end

