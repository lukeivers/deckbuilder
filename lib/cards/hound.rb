require './cards/minion'

class Hound < Minion
  def initialize
    @name = 'Hound'
    @attack = 1
    @max_health = 1
    @cost = 0
	@charge = true
          @type = 'Beast'
    super
  end
end
