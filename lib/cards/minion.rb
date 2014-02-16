require './character'
require './card'
require 'pp'

class Minion < Card
  include Character
  attr_accessor :owner, :summoning_sickness, :taunt, :spell_damage, :stealth, :charge, :divine_shield, :type
  attr_accessor :legendary, :temporary_attack, :dying

  def initialize(opts = {})
    @spell_damage ||= 0
    @legendary ||= false
    @divine_shield ||= false
    @charge ||= false
    @stealth ||= false
    @taunt ||= false
    @summoning_sickness = false
    @temporary_attack = 0
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
    self.owner.minions.each {|minion| minion.on_summon(self, true)}
    self.owner.opponent.minions.each {|minion| minion.on_summon(self)}
  end

  def start_round
    if @summoning_sickness
      @summoning_sickness = false
    end
  end

  def end_turn
    if @temporary_attack > 0
      @attack -= @temporary_attack
      @temporary_attack = 0
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
    if dead? and not @dying
      @dying = true
      self.die
    end
  end

  def add_attack(amount)
    @attack += amount
  end

  def add_temporary_attack(amount)
    @attack += amount
    @temporary_attack += amount
  end

  def die
    @dying = true
    self.owner.destroy_minion(self)
    self.owner.minions.each {|minion| minion.on_death(self, true)}
    self.owner.opponent.minions.each {|minion| minion.on_death(self)}
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
    super
  end

  def charge?
    @charge
  end

  def on_summon(source, friendly=false)

  end

  def on_death(source, friendly=false)

  end
end