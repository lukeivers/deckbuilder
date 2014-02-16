require './cards/minion'

class ColdlightSeer < Minion
  def initialize
    @name = "Coldlight Seer"
    @cost = 3
    @attack = 2
    @max_health = 3
	  @type = 'Murloc'
    super
  end

  def play(player)
    super
    self.owner.minions.select {|minion| minion != self}.concat(self.owner.opponent.minions).
        select {|minion| minion.type == 'Murloc'}.each {|minion| minion.add_max_health(2)}
	  #Give ALL other Murlocs +2 health
  end

end
