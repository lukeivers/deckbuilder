require './cards/minion'

class YouthfulBrewmaster < Minion
  def initialize
    self.cost = 2
    self.name = 'Youthful Brewmaster'
    self.attack = 3
    self.max_health = 2
    super
  end
  def battlecry
    super
	#Return a friendly minion from the battlefield to your hand
  end
end
