require './cards/minion'

class KorkronElite < Minion
  def initialize
    @name = "Kor'kron Elite"
    @cost = 4
    @attack = 4
    @max_health = 3
    @charge = true
    @deck_class = "Warrior"
    super
  end

end
