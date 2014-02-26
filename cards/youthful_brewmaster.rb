require './minion'

class YouthfulBrewmaster < Minion
  def initialize
    super
    self.cost = 2
    self.name = 'Youthful Brewmaster'
    self.attack = 3
    self.max_health = 2
  end

  def battlecry
    super
    owner.return_minion
	end
end
