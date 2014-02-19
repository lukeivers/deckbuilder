require './card'

class Weapon < Card
  attr_accessor :damage, :owner, :durability

  def play(player)
    @owner = player
    @owner.set_weapon(Weapon.new(attack: @damage, durability: @durability))
    super
  end

end
