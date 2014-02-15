require './card'

class TheCoin < Card
  def initialize
    @cost = 0
    @name = 'The Coin'
    super
  end
end