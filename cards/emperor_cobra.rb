require './cards/minion'

class EmperorCobra < Minion
  def initialize
    @cost = 3
    @name = 'Emperor Cobra'
    @attack = 2
    @max_health = 3
	@type = 'Beast'
    super
  end
  def attack_target(target)
	#Destroy any minion damaged by this minion.
  end
end
