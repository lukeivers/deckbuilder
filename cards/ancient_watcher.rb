require './cards/minion'

class AncientWatcher < Minion
  def initialize
    super
    self.cost = 2
    self.attack = 4
    self.max_health = 5
    self.name = "Ancient Watcher"
  end

  def can_attack?
    false
  end

end
