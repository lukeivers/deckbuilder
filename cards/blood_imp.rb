require './minion'

class BloodImp < Minion
  def initialize
    super
    self.name = "Blood Imp"
    self.cost = 1
    self.attack = 0
    self.max_health = 1
    self.stealth = true
	  self.type = 'Demon'
    self.deck_class = 'Warlock'
  end

  def end_turn
    super
    target = owner.minions.select {|minion| minion != self}.shuffle.first
    if target
      target.max_health += 1
    end
  end

end
