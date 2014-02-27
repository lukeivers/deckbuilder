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
	#Deal 2 damage to ALL characters
  end
end
