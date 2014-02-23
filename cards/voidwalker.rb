require './cards/minion'

class Voidwalker < Minion
  def initialize
    self.taunt = true
    self.cost = 1
    self.attack = 1
    self.max_health = 3
    self.name = "Voidwalker"
	  self.type = 'Demon'
    self.deck_class = 'Warlock'
    super
  end

end
