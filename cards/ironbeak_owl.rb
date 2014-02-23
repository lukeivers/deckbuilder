require './cards/minion'

class IronbeakOwl < Minion
  def initialize
    self.name = "Ironbeak Owl"
    self.cost = 2
    self.attack = 2
    self.max_health = 1
    super
  end

  def battlecry
    super
    target = self.owner.best_silence_target
    if target
      target.silence
    end
    #Silence a minion
  end
end
