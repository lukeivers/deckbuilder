require './cards/spell'

class Secret < Spell
  def battlecry
    super
    player.game.cause_event(:secret, player)
  end
end