require './cards/minion'

class BloodmageThalnos < Minion
  def initialize
    super
    self.cost = 2
    self.name = 'Bloodmage Thalnos'
    self.attack = 1
    self.max_health = 1
    self.spell_damage = 1
    self.legendary = true
  end

  def deathrattle
    super
    self.owner.draw 1
  end
end
