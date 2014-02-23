require './cards/minion'

class MurlocTidehunter < Minion
  def initialize
    self.name = "Murloc Tidehunter"
    self.cost = 2
    self.attack = 2
    self.max_health = 1
	  self.type='Murloc'
    super
  end

  def battlecry
    super
    self.owner.summon(Cards.get('Murloc Scout').first)
  end
end
