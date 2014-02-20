require './cards/minion'

class MagmaRager < Minion
  def initialize
    @name = "Magma Rager"
    @cost = 3
    @attack = 5
    @max_health = 1
    super
  end

end
