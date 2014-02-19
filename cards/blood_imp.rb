require './cards/minion'

class BloodImp < Minion
  def initialize
    @name = "Blood Imp"
    @cost = 1
    @attack = 0
    @max_health = 1
    @stealth = true
	  @type = 'Demon'
    @deck_class = 'Warlock'
    super
  end

  def end_turn
    target = self.owner.minions.select {|minion| minion != self}.shuffle.first
    if target
      target.add_max_health(1)
    end
    super
  end

end
