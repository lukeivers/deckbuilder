require './cards/spell'

class Secret < Spell
  def battlecry
    super
    $game.fire_hook :secret_played, source: self
  end
end