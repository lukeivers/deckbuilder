require './minion'

class MurlocRaider < Minion
  def initialize
    super
    self.cost = 1
    self.attack = 2
    self.max_health = 1
	  self.type = 'Murloc'
    self.name = "Murloc Raider"
  end

end
