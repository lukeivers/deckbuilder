require './cards/minion'

class NatPagle < Minion
  def initialize
    @cost = 2
    @name = 'Nat Pagle'
    @attack = 0
    @max_health = 4
    @legendary = true
	#At the end of your turn, yoou have a 50% chance to draw a card
    super
  end

end
