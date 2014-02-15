require '../character'
require '../card'

class Minion < Card
  include Character
  attr_accessor :owner, :summoning_sickness, :taunt

  def initialize
    @summoning_sickness = true
    super
  end

  def play(player)
    super
    @owner = player
  end

  def start_round
    if @summoning_sickness
      @summoning_sickness = false
    end
  end

  def can_attack?
    possible = super
    possible = false if @summoning_sickness
    possible
  end

  def taunt?
    taunt
  end

  def add_max_health(amount)
    @max_health += amount
    @health += amount
  end

  def add_attack(amount)
    @attack += amount
  end

  def deal_damage(amount, source=nil)
    result = super(amount, source)
    if dead?
      owner.destroy_minion(self)
    end
    result
  end
end