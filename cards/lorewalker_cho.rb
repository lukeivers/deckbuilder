require './minion'

class LorewalkerCho < Minion
  def initialize
    super
    self.cost = 2
    self.name = 'Lorewalker Cho'
    self.attack = 0
    self.max_health = 4
    self.legendary = true

	#Whenever a player casts a spell, put a copy into the other player's hand

  end


end
