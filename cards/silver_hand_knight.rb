require './minion'

class SilverHandKnight < Minion
  def initialize
    super
    self.name = "Silver Hand Knight"
    self.cost = 5
    self.attack = 4
    self.max_health = 4
  end

  def battlecry
    super
    owner.summon Cards.get(name: 'Squire')
  end
end
