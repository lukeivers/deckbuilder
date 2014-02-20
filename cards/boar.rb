require './cards/minion'

class Boar < Minion
  def initialize
    @name = 'Boar'
    @attack = 1
    @max_health = 1
    @cost = 0
          @type = 'Beast'
    super
  end
end
