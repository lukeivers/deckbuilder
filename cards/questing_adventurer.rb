require './cards/minion'

class QuestingAdventurer < Minion
  def initialize
    @name = "Questing Adventurer"
    @cost = 3
    @attack = 2
    @max_health = 2
	#Whenever you play a card, gain +1/+1
  end

end
