require './cards/minion'

class OgreMagi < Minion
  def initialize
    super
    self.cost = 4
    self.name = 'Ogre Magi'
    self.attack = 4
    self.max_health = 4
    self.spell_damage = 1
  end
end
