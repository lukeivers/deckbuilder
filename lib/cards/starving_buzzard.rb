require './cards/minion'

class StarvingBuzzard < Minion
  def initialize
    @name = 'Starving Buzzard'
    @attack = 2
    @max_health = 1
    @cost = 2
          @type = 'Beast'
	#Whenever you summon a Beast, draw a card
    super
  end
end
