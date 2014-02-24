require './cards/minion'

class ManaAddict < Minion
  def initialize
    super
    self.name = "Mana Addict"
    self.cost = 2
    self.attack = 1
    self.max_health = 3
  end

  def battlecry
    super
    $game.add_hook :spell_cast, self
  end

  def on_spell_cast(opts = {})
    temporary_attack += 2
  end

end
