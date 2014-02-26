require './cards/minion'

class CultMaster < Minion
  def initialize
    super
    self.cost = 4
    self.name = 'Cult Master'
    self.attack = 4
    self.max_health = 2
	#Whenever one of your other minions dies, draw a card
  end
end
