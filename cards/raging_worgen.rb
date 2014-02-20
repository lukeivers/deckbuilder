require './cards/minion'

class RagingWorgen < Minion
  def initialize
    @cost = 3
    @name = 'Raging Worgen'
    @attack = 3
    @max_health = 3
    super
  end

  def attack
    if @health < @max_health
      @attack + 1
	#windfury = true
    else
      @attack
    end
  end
end
