require './character'
require './card'

class Minion < Card
  include Character
  attr_accessor :owner, :summoning_sickness, :taunt, :spell_damage, :stealth, :charge, :divine_shield

  def initialize(opts = {})
    if opts
      if opts[:name]
        @name = opts[:name]
        @attack = opts[:attack]
        @max_health = opts[:max_health]
        @cost = opts[:cost]
        @taunt = opts[:taunt]
        @stealth = opts[:stealth]
        if opts[:spell_damage]
          @spell_damage = opts[:spell_damage]
        end
      end
    end
    if not @spell_damage
      @spell_damage = 0
    end
    @summoning_sickness = false
    super
  end

  def play(player)
    super
    @owner = player
    @owner.add_minion(self)
    @owner.add_spell_damage(@spell_damage)
    if global_attack_bonus = player.global_attack_bonus
      @attack += global_attack_bonus
    end
    if global_health_bonus = player.global_health_bonus
      @max_health += global_health_bonus
      @health += global_health_bonus
    end
    @summoning_sickness = true unless self.charge?
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
    self.taunt
  end

  def stealth?
    self.stealth
  end

  def attack_target(target)
    @stealth = false
    super
  end

  def add_max_health(amount)
    @max_health += amount
    @health += amount
  end

  def add_attack(amount)
    @attack += amount
  end

  def die
    super
    Logger.log self.name + ' died.'
    owner.destroy_minion(self)
    owner.add_spell_damage(-(@spell_damage))
  end

  def minion?
    true
  end

  def deal_damage(amount, source = nil)
    if @divine_shield
      amount = 0
      @divine_shield = false
    end
    super
  end

  def charge?
    @charge
  end

end