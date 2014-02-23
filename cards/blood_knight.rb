require './cards/minion'

class BloodKnight < Minion
  def initialize
    super
    self.cost = 3
    self.attack = 3
    self.max_health = 3
    self.name = "Blood Knight"
  end

  def battlecry
    super
    targets = Array.new.concat(owner.minions).concat(owner.opponent.minions)
    targets.select {|target| target.divine_shield}
    targets.each do |target|
      target.divine_shield = false
      attack += 3
      max_health += 3
    end
	end
end
