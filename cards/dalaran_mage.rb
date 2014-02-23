require './cards/minion'

class DalaranMage < Minion
  def initialize
    super
    self.cost = 3
    self.name = 'Dalaran Mage'
    self.attack = 1
    self.max_health = 4
    self.spell_damage = 1
  end

end
