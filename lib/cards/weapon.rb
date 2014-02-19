require './card'

class Weapon < Card
  attr_accessor :damage, :owner

  def play(player)
    @owner = player
    super
  end

  def damage
    @damage + self.owner.weapon_damage
  end
end
