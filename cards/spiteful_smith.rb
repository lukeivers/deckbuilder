require './minion'

class SpitefulSmith < Minion
  attr_accessor :enrage_enabled

  def initialize
    super
    self.cost = 5
    self.name = 'Spiteful Smith'
    self.attack = 4
    self.max_health = 6
  end

  #TODO: Enrage: Your weapon has +2 attack

end
