require './card'

class Weapon < Card
  attr_accessor :attack, :durability

  def initialize(opts = {})
    if opts and opts.size > 0
      self.attack = opts[:attack]
      self.durability = opts[:durability]
      self.owner = opts[:owner]
    end
  end

  def play(player)
    super
    owner.weapon = self
    battlecry
  end

  def destruct
    Logger.log 'Weapon durability exhausted'
    owner.weapon = nil
  end

  def durability=(amount)
    if amount <= 0
      destruct
    end
    @durability = amount
  end

  def battlecry

  end

  def to_s
    "#{self.attack}/#{self.durability}"
  end
end
