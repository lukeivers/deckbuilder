require './cards/minion'

class NatPagle < Minion
  def initialize
    self.cost = 2
    self.name = 'Nat Pagle'
    self.attack = 0
    self.max_health = 4
    self.legendary = true
	#At the end of your turn, yoou have a 50% chance to draw a card
    super
  end

end
