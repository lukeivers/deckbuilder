require './cards/minion'

class AngryChicken < Minion
  def initialize
    @cost = 1
    @name = 'Angry Chicken'
    @attack = 1
    @max_health = 1
    super
  end

  def attack
    if @health < @max_health
      @attack + 5
    else
      @attack
    end
  end
end
