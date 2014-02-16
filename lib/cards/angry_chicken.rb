require './cards/minion'

class AngryChicken < Minion
  def initialize
    @cost = 1
    @name = 'Angry Chicken'
    @attack = 1
    @max_health = 1
	#Enrage: +5 attack
    super
  end
end
