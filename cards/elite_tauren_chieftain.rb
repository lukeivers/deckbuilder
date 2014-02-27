require './minion'

class EliteTaurenChieftain < Minion
  def initialize
    super
    self.name = "Elite Tauren Chieftain"
    self.cost = 5
    self.attack = 5
    self.max_health = 5
	  self.legendary = true
  end

  def battlecry
    super
	#Give both players the power to ROCK! (with a Power Chord card)
	#I Am Murloc
	#Power of the Horde
	#Rogues Do It From Behind
	end
end
