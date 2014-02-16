require './cards/minion'

class FlameImp < Minion
  def initialize
    @name = "Flame Imp"
    @cost = 1
    @attack = 3
    @max_health = 2
	  @type = 'Demon'
    @deck_class = 'Warlock'

    super
  end

  def play(player)
    super
	  self.owner.deal_damage(3)
  end
end
