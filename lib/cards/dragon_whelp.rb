require './cards/minion'

class DragonWhelp < Minion
  def initialize
    @name = 'Dragon Whelp'
    @attack = 1
    @max_health = 1
    @cost = 0
    super
  end
end