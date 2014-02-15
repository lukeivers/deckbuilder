module Character
  attr_accessor :health, :max_health, :attack, :frozen, :thawing, :name

  def initialize(opts = {})
    @health = @max_health
    @frozen = false
    @thawing = false
  end

  def deal_damage(amount, source = nil)
    Logger.log self.name + ' was dealt ' + amount.to_s + ' damage'  + (source.nil? ? '.' : ' from ' + source.name + '.')
    @health -= amount
    if health <= 0
      -1
    else
      amount
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
    damage = target.deal_damage(@attack, self)
    if target.minion?
      self.deal_damage(target.attack, target)
    end
    Logger.log @owner.name + '\'s ' + self.name + ' attacked ' + target.name + ' for ' + damage.to_s + '.'
    damage
  end

  def can_attack?
    possible = true
    possible = false if frozen?
    possible
  end

  def dead?
    @health <= 0
  end

  def minion?
    false
  end
end