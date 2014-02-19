require './cards/minion'

class MurlocScout < Minion
  def initialize
    @name = 'Murloc Scout'
    @attack = 1
    @max_health = 1
    @cost = 0
          @type = 'Murloc'
    super
  end
end
