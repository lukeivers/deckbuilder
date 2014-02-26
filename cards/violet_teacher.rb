require './minion'

class VioletTeacher < Minion
  def initialize
    super
    self.cost = 4
    self.attack = 3
    self.max_health = 5
    self.name = "Violet Teacher"
	#Whenever you cast a spell, summon a 1/1 Violet Apprentice
  end
end
