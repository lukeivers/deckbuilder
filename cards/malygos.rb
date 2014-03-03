require './minion'

class Malygos < Minion
  def initialize
    super
    self.name = "Malygos"
    self.cost = 9
    self.attack = 4
    self.max_health = 12
	  self.legendary = true
	self.type = "Dragon"
	self.spell_damage = 4
  end

end
