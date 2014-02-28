require './minion'

class HarrisonJones < Minion
  def initialize
    super
    self.name = "Harrison Jones"
    self.cost = 5
    self.attack = 5
    self.max_health = 4
	  self.legendary = true
  end

  def battlecry
    super
    weapon = owner.opponent.weapon
    if weapon
      amount = weapon.durability
      weapon.destruct
      owner.draw amount
    end
	#Destroy your opponent's weapon, and draw cards equal to its Durability
	end
end
