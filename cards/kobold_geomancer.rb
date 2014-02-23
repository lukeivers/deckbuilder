require './cards/minion'

class KoboldGeomancer < Minion
  def initialize
    self.cost = 2
    self.name = 'Kobold Geomancer'
    self.attack = 2
    self.max_health = 2
    self.spell_damage = 1
    super
  end
end
