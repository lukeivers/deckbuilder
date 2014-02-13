class Weapon
  attr_accessor :attack, :durability

  def initialize(opts = {})
    @attack = opts[:attack]
    @durability = opts[:durability]
  end
end