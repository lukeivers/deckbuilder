require './character'

class Minion < Character
  attr_accessor :owner, :summoning_sickness, :taunt

  def initialize(opts = {})
    @owner = opts[:owner]
    @summoning_sickness = true
    super(max_health: opts[:card].health, attack: opts[:card].attack, name: opts[:card].name)
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

  def deal_damage(amount)
    super(amount)
    if dead?
      owner.destroy_minion(self)
    end
  end
end