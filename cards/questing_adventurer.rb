require './minion'

class QuestingAdventurer < Minion
  def initialize
    super
    self.name = "Questing Adventurer"
    self.cost = 3
    self.attack = 2
    self.max_health = 2
    self.auto_hook = :card_played
	#Whenever you play a card, gain +1/+1
  end

  def on_card_played(opts = {})
    if opts[:source].owner == owner
      self.attack += 1
      self.max_health += 1
    end
  end

end
