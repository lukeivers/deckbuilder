require './cards/minion'

class YouthfulBrewmaster < Minion
  def initialize
    @cost = 2
    @name = 'Youthful Brewmaster'
    @attack = 3
    @max_health = 2
    super
  end
  def play(player)
    super
	#Return a friendly minion from the battlefield to your hand
  end
end
