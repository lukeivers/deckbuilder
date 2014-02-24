require './card'

class Weapon < Card
  attr_accessor :attack, :durability

  def play(player)
    super
    owner.weapon = self
    battlecry
  end

  def destruct
    owner.weapon = nil
  end

  def durability=(amount)
    if amount <= 0
      destruct
    end
    @durability = amount
  end
end
