require './minion'

class SouthseaDeckhand < Minion
  def initialize
    super
    self.name = "Southsea Deckhand"
    self.cost = 1
    self.attack = 2
    self.max_health = 1
  end

  def charge
    if owner.weapon
      true
    else
      false
    end
  end
end
