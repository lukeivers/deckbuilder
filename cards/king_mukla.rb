require './minion'

class KingMukla < Minion
  def initialize
    super
    self.name = "King Mukla"
    self.cost = 3
    self.attack = 5
    self.max_health = 5
	  self.legendary = true
	  self.type = 'Beast'
  end

  def battlecry
    super
    owner.opponent.add_card Cards.get(name: 'Bananas', amount: 2)
	end


end
