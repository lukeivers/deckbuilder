require './cards/minion'

class TaurenWarrior < Minion
  def initialize
    @cost = 3
    @name = 'Tauren Warrior'
    @attack = 2
    @max_health = 3
	@taunt = true
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
