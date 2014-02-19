require './card'

class Spell < Card
  attr_accessor :damage, :owner

  def play(player)
    @owner = player
    super
  end

  def damage
    @damage + self.owner.spell_damage
  end
end