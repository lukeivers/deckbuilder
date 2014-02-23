require './cards/minion'

class TimberWolf < Minion
  def initialize
    self.name = 'Timber Wolf'
    self.attack = 1
    self.max_health = 1
    self.cost = 1
          self.type = 'Beast'
    self.deck_class = 'Hunter'
	#Your other Beasts have +1 attack
    super
  end
end
