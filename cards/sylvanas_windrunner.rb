require './minion'

class SylvanasWindrunner < Minion
  def initialize
    super
    self.name = "Sylvanas Windrunner"
    self.cost = 6
    self.attack = 5
    self.max_health = 5
	  self.legendary = true
  end

  def deathrattle
    super
    target = owner.opponent.minions.shuffle.first
    if target
      owner.add_minion target, false
      target.destroy_minion target
      target.owner = owner
    end
  end
end
