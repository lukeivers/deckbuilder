module Character
  attr_accessor :health, :max_health, :attack, :frozen, :thawing, :name

  def initialize(opts = {})
    @health = @max_health
    @frozen = false
    @thawing = false
  end

  def deal_damage(amount, source = nil)
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
    target.deal_damage(@attack, self)
  end

  def can_attack?
    possible = true
    possible = false if frozen?
    possible
  end

  def dead?
    @health <= 0
  end
end