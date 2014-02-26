class Weapon
  attr_accessor :attack, :durability, :owner

  def initialize(opts = {})
    self.attack = opts[:attack]
    self.durability = opts[:durability]
    self.owner = opts[:owner]
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

  def to_s
    "#{self.attack}/#{self.durability}"
  end
end