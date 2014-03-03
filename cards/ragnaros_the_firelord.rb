require './minion'

class RagnarosTheFirelord < Minion
  def initialize
    super
    self.name = "Ragnaros the Firelord"
    self.cost = 8
    self.attack = 8
    self.max_health = 8
	  self.legendary = true
	#Cant attack.  At the end of your turn, deal 8 damage to a random enemy
  end

  def can_attack?
    false
  end


end
