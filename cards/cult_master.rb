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

  def play(player)
    super
    $game.add_hook :death, self
  end

  def die
    super
    $game.remove_hook :death, self
  end

  def on_death(opts = {})
    if opts[:source].minion? and opts[:source].owner == owner
      owner.draw 1
    end
  end
end
