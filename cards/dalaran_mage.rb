require './cards/minion'

class DalaranMage < Minion
  def initialize
    @cost = 3
    @name = 'Dalaran Mage'
    @attack = 1
    @max_health = 4
    @spell_damage = 1
    super
  end

end
