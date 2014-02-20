require './cards/minion'

class SilverbackPatriarch < Minion
  def initialize
    @taunt = true
    @cost = 3
    @attack = 1
    @max_health = 4
    @name = "Silverback Patriarch"
	  @type = 'Beast'
    super
  end

end
