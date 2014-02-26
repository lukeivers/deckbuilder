require './minion'

class AzureDrake < Minion
  def initialize
    super
    self.cost = 5
    self.name = 'Azure Drake'
    self.attack = 4
    self.max_health = 4
    self.spell_damage = 1
  end

  def deathrattle
    super
    owner.draw 1
  end
end
