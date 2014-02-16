require './cards/minion'

class AcolyteOfPain < Minion
  def initialize
    @cost = 3
    @name = 'Acolyte of Pain'
    @attack = 1
    @max_health = 3
	#Whenever this minion takes damage, draw a card
    super
  end
end
