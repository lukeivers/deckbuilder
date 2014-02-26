require './minion'

class LeperGnome < Minion
  def initialize
    super
    self.name = "Leper Gnome"
    self.cost = 1
    self.attack = 2
    self.max_health = 1
  end

  def deathrattle
    super
    owner.opponent.deal_damage damage: 2
	end

end

