require './cards/minion'

class Archmage < Minion
  def initialize
    super
    self.cost = 6
    self.name = 'Archmage'
    self.attack = 4
    self.max_health = 7
    self.spell_damage = 1
  end
end
