require './minion'

class NatPagle < Minion
  def initialize
    super
    self.cost = 2
    self.name = 'Nat Pagle'
    self.attack = 0
    self.max_health = 4
    self.legendary = true
  end

  def end_turn
    super
    if rand(2) == 1
      owner.draw 1
    end
  end
end
