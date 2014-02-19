require './cards/spell'

class ExplosiveTrap < Spell
  def initialize
    @cost = 2
    @name = 'Explosive Trap'
    @deck_class = 'Hunter'
	#@secret = true
	#When your hero is attacked, deal 2 damage to all enemies
    super
  end

end
