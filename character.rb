module Character
  attr_accessor :health, :max_health, :attack, :frozen, :thawing, :name, :temporary_attack

  def initialize(opts = {})
    @health = @max_health
    @health_hoooks = Array.new
    @temporary_attack = 0
    @frozen = false
    @thawing = false
  end

  def deal_damage(amount, source = nil)
    Logger.log self.name + ' was dealt ' + amount.to_s + ' damage'  + (source.nil? ? '.' : ' from ' + source.name + '.')
    @health -= amount
    if health <= 0
      self.die
    end
    amount
  end

  def end_turn
    if @temporary_attack > 0
      @attack -= @temporary_attack
      @temporary_attack = 0
    end
  end

  def freeze
    @frozen = true
  end

  def frozen?
    @frozen
  end

  def thaw
    @frozen = false
    @thawing = false
  end

  def start_round
    if @frozen and not @thawing
      @thawing = true
    elsif @thawing
      self.thaw
    end
  end

  def attack_target(target)
    Logger.log self.name + ' is attacking ' + target.name
    damage = target.deal_damage(self.attack, self)
    if target.minion?
      self.deal_damage(target.attack, target)
    end
    Logger.log @owner.name + '\'s ' + self.name + ' attacked ' + target.name + ' for ' + damage.to_s + '.'
    damage
  end

  def add_attack(amount)
    @attack += amount
  end

  def add_temporary_attack(amount)
    @attack += amount
    @temporary_attack += amount
  end

  def can_attack?
    possible = true
    possible = false if frozen?
    possible
  end

  def add_health(amount)
    self.health_hooks.each {|hooker| hooker.on_heal}
    @health += amount
  end

  def dead?
    @health <= 0
  end

  def minion?
    false
  end

  def die
    Logger.log self.name + ' died.'
  end
end