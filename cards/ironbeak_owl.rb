require './cards/minion'

class IronbeakOwl < Minion
  def initialize
    @name = "Ironbeak Owl"
    @cost = 2
    @attack = 2
    @max_health = 1
    super
  end

  def play(player)
    super
    target = self.owner.best_silence_target
    if target
      target.silence
    end
    #Silence a minion
  end
end
