require './minion'

class CairneBloodhoof < Minion
  def initialize
    super
    self.cost = 6
    self.name = 'Cairne Bloodhoof'
    self.attack = 4
    self.max_health = 5
    self.legendary = true
  end

  def deathrattle
    super
    owner.summon Cards.get(name: 'Baine Bloodhoof')
  end
end
