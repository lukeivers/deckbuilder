require './minion'

class PriestessOfElune < Minion
  def initialize
    super
    self.name = "Priestess of Elune"
    self.cost = 6
    self.attack = 5
    self.max_health = 4
  end

  def battlecry
    super
  	owner.health += 4
  end

end
