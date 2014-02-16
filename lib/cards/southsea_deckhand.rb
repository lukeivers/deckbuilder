require './cards/minion'

class SouthseaDeckhand < Minion
  def initialize
    @name = "Southsea Deckhand"
    @cost = 1
    @attack = 2
    @max_health = 1
    super
  end

  def charge?
    if self.owner.weapon
      true
    end
  end
end
