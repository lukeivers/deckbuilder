require './minion'

class LeeroyJenkins < Minion
  def initialize
    super
    self.name = "Leeroy Jenkins"
    self.cost = 4
    self.attack = 6
    self.max_health = 2
    self.charge = true
	  self.legendary = true
  end

  def battlecry
    super
    2.times { owner.opponent.summon Cards.get(name: 'Dragon Whelp') }
	end
end
