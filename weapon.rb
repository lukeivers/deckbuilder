class Weapon
  attr_accessor :attack, :durability

  def initialize(opts = {})
    @attack = opts[:attack]
    @durability = opts[:durability]
  end

  def add_attack(amount)
    @attack += amount
  end
end