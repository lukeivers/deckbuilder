require './minion'

class IronbeakOwl < Minion
  def initialize
    super
    self.name = "Ironbeak Owl"
    self.cost = 2
    self.attack = 2
    self.max_health = 1
  end

  def battlecry
    super
    owner.silence_minion
  end
end
