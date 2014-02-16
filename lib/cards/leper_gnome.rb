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
    super 
	#deal 2 damage to enemy hero
  end

end

