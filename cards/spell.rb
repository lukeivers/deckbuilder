require './card'

class Spell < Card
  attr_accessor :damage, :owner, :secret

  def damage
    self.damage + owner.spell_damage
  end

  def play(player)
    super
    battlecry
  end

  def battlecry
  end
end