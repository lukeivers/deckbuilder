require './cards/minion'

class Secretkeeper < Minion
  def initialize
    super
    self.name = "Secretkeeper"
    self.cost = 1
    self.attack = 1
    self.max_health = 2
  end

  def play(player)
    super
    $game.add_hook :secret_played, self
  end

  def die
    super
    $game.remove_hook :secret_played, self
  end

  def on_secret_played(opts = {})
    self.attack += 1
    self.max_health += 1
  end

end
