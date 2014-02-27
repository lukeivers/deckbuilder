require './spell'

class PowerOfTheHorde < Spell
  def initialize
    super
    self.cost = 4
    self.name = 'Power of the Horde'
  end

  def battlecry
    super
	#Summon a random Horde Warrior
	# Frostwolf Grunt
	# Tauren Warrior
	# Thrallmar Farseer
	# Silvermoon Guardian
	# Sen'jin Shieldmasta
	# Cairne Bloodhoof
  end
end
