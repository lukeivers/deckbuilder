require './cards/minion'

class AzureDrake < Minion
  def initialize
    @cost = 5
    @name = 'Azure Drake'
    @attack = 4
    @max_health = 4
    @spell_damage = 1
    super
  end

  def die
    super
    self.owner.draw(1)
  end


end
