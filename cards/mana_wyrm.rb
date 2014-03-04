require './minion'

class ManaWyrm < Minion
  def initialize
    super
    self.name = "Mana Wyrm"
    self.cost = 1
    self.attack = 1
    self.max_health = 3
  end

  def play(player)
    super
    $game.add_hook :spell_cast, self
  end

  def die
    super
    $game.remove_hook :spell_cast, self
  end

  def on_spell_cast(opts = {})
    self.attack += 1
  end

end
