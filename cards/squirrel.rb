require './cards/minion'

class Squirrel < Minion
  def initialize
    @name = 'Squirrel'
    @attack = 1
    @max_health = 1
    @cost = 1
          @type = 'Beast'
    super
  end
end
