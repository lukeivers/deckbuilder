require './cards/minion'

class KoboldGeomancer < Minion
  def initialize
    @cost = 2
    @name = 'Kobold Geomancer'
    @attack = 2
    @max_health = 2
    @spell_damage = 1
    super
  end
end
