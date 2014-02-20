require './cards/minion'

class Imp < Minion
  def initialize
    @cost = 1
    @attack = 1
    @max_health = 1
    @name = "Imp"
	  @type = 'Demon'
    super
  end

end
