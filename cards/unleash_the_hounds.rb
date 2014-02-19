require './cards/spell'

class UnleashTheHounds < Spell
  def initialize
    @cost = 2
    @name = 'Unleash The Hounds'
    @deck_class = 'Hunter'
	#For each enemy minion summon a 1/1 Hound with Charge
    super
  end

end
