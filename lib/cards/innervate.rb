require './card'

class Innervate < Card
  def initialize
    @cost = 0
    @name = 'Innervate'
    super
  end

  def play
    super
    #gain 2 mana crystals this turn only
  end
end
