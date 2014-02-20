require './card'

class Weapon < Card
  attr_accessor :attack, :owner, :durability

  def play(player)
    @owner = player
    @owner.set_weapon(self)
    super
  end

  def destruct
    owner.set_weapon(nil)
  end

  def add_attack(amount)
    @attack += amount
  end

end
