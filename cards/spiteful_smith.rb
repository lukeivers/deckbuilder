require './minion'

class SpitefulSmith < Minion
  def initialize
    super
    self.cost = 5
    self.name = 'Spiteful Smith'
    self.attack = 4
    self.max_health = 6
  end

	#Enrage: Your weapon has +2 attack

end
