require './cards/minion'

class LeperGnome < Minion
  def initialize
    @name = "Leper Gnome"
    @cost = 1
    @attack = 2
    @max_health = 1
    super
  end

  def die
    self.owner.opponent.deal_damage(2)
    super 
	end

end

