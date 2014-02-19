require './cards/minion'

class YoungPriestess < Minion
  def initialize
    @name = "Young Priestess"
    @cost = 1
    @attack = 2
    @max_health = 1
	  super
  end

  def end_turn
    super
    target = self.owner.minions.select {|minion| minion != self}.shuffle.first
    if target
      target.add_max_health(1)
    end
  end

end
