require './cards/minion'

class AmaniBerserker < Minion
  def initialize
    @cost = 2
    @name = 'Amani Berserker'
    @attack = 2
    @max_health = 3
    super
  end

  def attack
    if @health < @max_health
      @attack + 3
    else
      @attack
    end
  end
end
