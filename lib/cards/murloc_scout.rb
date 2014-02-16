require './cards/minion'

class MurlocScout < Minion
  def initialize
    @name = 'Murloc Scout'
    @attack = 1
    @max_health = 1
    @cost = 0
    super
  end
end