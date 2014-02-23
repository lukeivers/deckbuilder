require './cards/minion'

class LeeroyJenkins < Minion
  def initialize
    self.name = "Leeroy Jenkins"
    self.cost = 4
    self.attack = 6
    self.max_health = 2
    self.charge = true
	  self.legendary = true
    super
  end

  def battlecry
    super
    2.times { self.owner.opponent.summon(Cards.get('Dragon Whelp').first) }
	end


end
