require './character'
require './card'

class Minion < Card
  include Character
  attr_accessor :owner, :summoning_sickness, :taunt, :spell_damage, :stealth, :charge, :divine_shield, :type
  attr_accessor :legendary, :dying, :silenced

  def initialize(opts = {})
    @spell_damage ||= 0
    @legendary ||= false
    @divine_shield ||= false
    @charge ||= false
    @stealth ||= false
    @taunt ||= false
    @summoning_sickness = false
    @silenced = false
    super
  end

  def play(player)
    super
    @owner = player
    @owner.add_minion(self)
    self.owner.add_spell_damage(@spell_damage)
    self.add_attack(self.owner.global_attack_bonus)
    self.add_max_health(self.owner.global_health_bonus)
    if self.type == 'Murloc'
      self.add_attack(self.owner.murloc_attack_bonus)
      self.add_max_health(self.owner.murloc_health_bonus)
    elsif self.type == 'Beast'
      self.add_attack(self.owner.beast_attack_bonus)
      self.add_max_health(self.owner.beast_health_bonus)
    end
    @summoning_sickness = true unless self.charge?
  end

  def start_round
    if @summoning_sickness
      @summoning_sickness = false
    end
  end

  def silence
    self.taunt = false
    self.silenced = true
    owner.silenced_minion_hook(self)
    #TODO: update all deathrattles, hooks, etc to respect silencing
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
    if dead? and not @dying
      @dying = true
      self.die
    end
  end

  def die
    @dying = true
    self.owner.remove_summon_hook(self)
    self.owner.remove_attack_hook(self)
    self.owner.remove_death_hook(self)
    self.owner.remove_minion_damage_hook(self)
    self.owner.cause_death_hook(self)
    self.owner.destroy_minion(self)
    self.owner.add_spell_damage(-(@spell_damage))
    super
  end

  def minion?
    true
  end

  def deal_damage(amount, source = nil)
    if @divine_shield
      amount = 0
      @divine_shield = false
    end
    damage = super(amount, source)
    if damage > 0
      owner.cause_minion_damage_hook(self, amount, source)
    end
    damage
  end

  def charge?
    @charge
  end

end