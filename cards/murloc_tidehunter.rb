require './cards/minion'

class MurlocTidehunter < Minion
  def initialize
    super
    self.name = "Murloc Tidehunter"
    self.cost = 2
    self.attack = 2
    self.max_health = 1
	  self.type='Murloc'
  end

  def battlecry
    super
    self.owner.summon Cards.get(name: 'Murloc Scout')
  end
end
