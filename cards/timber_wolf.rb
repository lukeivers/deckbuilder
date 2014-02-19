require './cards/minion'

class TimberWolf < Minion
  def initialize
    @name = 'Timber Wolf'
    @attack = 1
    @max_health = 1
    @cost = 1
          @type = 'Beast'
    @deck_class = 'Hunter'
	#Your other Beasts have +1 attack
    super
  end
end
