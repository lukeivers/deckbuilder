require './minion'

class KorkronElite < Minion
  def initialize
    super
    self.name = "Kor'kron Elite"
    self.cost = 4
    self.attack = 4
    self.max_health = 3
    self.charge = true
    self.deck_class = "Warrior"
  end

end
