require './cards/minion'

class MurlocTidehunter < Minion
  def initialize
    @name = "Murloc Tidehunter"
    @cost = 2
    @attack = 2
    @max_health = 1
	  @type='Murloc'
    super
  end

  def play(player)
    super
    self.owner.summon(Cards.get('Murloc Scout').first)
  end
end
