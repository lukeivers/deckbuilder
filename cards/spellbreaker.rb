require './cards/minion'

class Spellbreaker < Minion
  def initialize
    super
    self.name = "Spellbreaker"
    self.cost = 4
    self.attack = 4
    self.max_health = 3
  end

  def battlecry
    super
    owner.silence_minion
  end
end
