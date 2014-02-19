require './cards/minion'

class Archmage < Minion
  def initialize
    @cost = 6
    @name = 'Archmage'
    @attack = 4
    @max_health = 7
    @spell_damage = 1
    super
  end
end
