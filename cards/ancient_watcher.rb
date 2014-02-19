require './cards/minion'

class AncientWatcher < Minion
  def initialize
    @cost = 2
    @attack = 4
    @max_health = 5
    @name = "Ancient Watcher"
	#Can't Attack
    super
  end

end
