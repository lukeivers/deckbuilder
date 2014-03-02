require './minion'

class IllidanStormrage < Minion
  def initialize
    super
    self.name = "Illidan Stormrage"
    self.cost = 6
    self.attack = 7
    self.max_health = 5
	  self.legendary = true
    self.auto_hook = :card_played
  end

  def on_card_played(opts = {})
    if opts[:source].owner == self.owner and opts[:source] != self and opts[:source].name != 'Flame of Azzinoth'
      owner.summon Cards.get name: 'Flame of Azzinoth'
    end
  end

	#Whenever you play a card, summon a 2/1 Flame of Azzinoth

end
