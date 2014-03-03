require './minion'

class Whelp < Minion
  def initialize
    super
    self.name = 'Whelp'
    self.attack = 1
    self.max_health = 1
    self.cost = 1
	self.type = "Dragon"
  end
end
