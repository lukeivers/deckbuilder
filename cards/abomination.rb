require './minion'

class Abomination < Minion
  def initialize
    super
    self.cost = 5
    self.name = 'Abomination'
    self.attack = 4
    self.max_health = 4
	self.taunt = true
  end

  def deathrattle
    super
    Array.new.concat(owner.targets).concat(owner.opponent.targets).each {|target| deal_damage damage: 2}
  end
end
