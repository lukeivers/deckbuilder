require './cards/minion'

class QuestingAdventurer < Minion
  def initialize
    self.name = "Questing Adventurer"
    self.cost = 3
    self.attack = 2
    self.max_health = 2
	#Whenever you play a card, gain +1/+1
  end

end
