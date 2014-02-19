require './cards/minion'

class BloodmageThalnos < Minion
  def initialize
    @cost = 2
    @name = 'Bloodmage Thalnos'
    @attack = 1
    @max_health = 1
    @spell_damage = 1
    @legendary = true
    super
  end

  def die
    self.owner.draw(1)
    super
  end


end
