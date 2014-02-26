require './card'

class Spell < Card
  attr_accessor :damage, :owner, :secret

  def damage
    @damage + owner.spell_damage
  end

  def play(player)
    super
    $game.fire_hook :spell_cast, source: self
    battlecry
  end

  def battlecry
  end

  def cost
    if owner and owner.spell_cost == -1
      0
    else
      super
    end
  end
end