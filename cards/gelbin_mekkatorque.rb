require './minion'

class GelbinMekkatorque < Minion
  def initialize
    super
    self.name = "Gelbin Mekkatorque"
    self.cost = 6
    self.attack = 6
    self.max_health = 6
	  self.legendary = true
  end

  def battlecry
    super
	#Summon an AWESOME invention
	# Emboldener 3000
	# Homing Chicken
	# Poultryizer
	# Repair Bot
	end
end
