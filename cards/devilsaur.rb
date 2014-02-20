require './cards/minion'

class Devilsaur < Minion
  def initialize
    @name = 'Devilsaur'
    @attack = 5
    @max_health = 5
    @cost = 5
          @type = 'Beast'
    super
  end
end
