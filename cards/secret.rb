require './cards/spell'

class Secret < Spell
  def play(player)
    super
    player.game.cause_event(:secret, player)
  end
end