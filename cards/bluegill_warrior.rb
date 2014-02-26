require './minion'

class BluegillWarrior < Minion
  def initialize
    super
    self.name = "Bluegill Warrior"
    self.cost = 2
    self.attack = 2
    self.max_health = 1
    self.charge = true
    self.type = 'Murloc'
  end

end
