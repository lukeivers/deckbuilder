require './cards/minion'

class SouthseaDeckhand < Minion
  def initialize
    self.name = "Southsea Deckhand"
    self.cost = 1
    self.attack = 2
    self.max_health = 1
    super
  end

  def charge?
    if self.owner.weapon
      true
    end
  end
end
