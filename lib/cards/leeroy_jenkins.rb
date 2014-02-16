require './cards/minion'

class LeeroyJenkins < Minion
  def initialize
    @name = "Leeroy Jenkins"
    @cost = 4
    @attack = 6
    @max_health = 2
    @charge = true
	  @legendary = true
    super
  end

  def play(player)
    super
    2.times { self.owner.opponent.summon(Cards.get('Dragon Whelp').first) }
	end


end
